import 'package:get_it/get_it.dart';
import 'package:slicing_homepage/data/bloc/login_bloc/login_bloc.dart';
import 'package:slicing_homepage/data/bloc/register_bloc/register_bloc.dart';
import 'package:slicing_homepage/data/data_source/remote_data_souce.dart';
import 'package:slicing_homepage/data/repository/repository_impl.dart';
import 'package:slicing_homepage/domain/repository/domain_repository.dart';
import 'package:slicing_homepage/domain/usecase/login/login_usecase.dart';
import 'package:slicing_homepage/domain/usecase/register/register_usecase.dart';

final sl = GetIt.instance;

Future<void> init(String baseUrl) async {
  //register Bloc
  sl.registerFactory(() => RegisterBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl()));

  //register Use Case
  sl.registerLazySingleton(() => RegisterUseCase(sl()));
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  //register Repository
  sl.registerLazySingleton<DomainRepository>(
      () => DataRepositoryIpml(remoteDataSource: sl()));

  //register Data Source
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());
}
