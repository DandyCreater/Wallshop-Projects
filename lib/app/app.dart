import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slicing_homepage/data/bloc/akun_bloc/menu/menu_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/barang_bloc/barang_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/kategoritoko_bloc/kategoritoko_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/lokasitoko_bloc/lokasitoko_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/mall_bloc/mall_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/all_item/allitem_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/category/category_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/product/product_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/terbaru/terbaru_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/terlaris/terlaris_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/toko_bloc/toko_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/popularItem/popular_item_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/promo/promo_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/promoSpesial/promo_spesial_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/rekomendasiItem/rekomendasi_item_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/tokopopuler/popular_store_bloc.dart';
import 'package:slicing_homepage/data/bloc/mengikuti_bloc/mengikuti_bloc.dart';
import 'package:slicing_homepage/data/bloc/notifications_bloc/notifications_bloc.dart';
import 'package:slicing_homepage/data/bloc/rank_homepage_bloc/rankPembeli/rankpembeli_bloc.dart';
import 'package:slicing_homepage/data/bloc/rank_homepage_bloc/rankToko/ranktoko_bloc.dart';
import 'package:slicing_homepage/presentation/resources/routes_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._instance();
  int appState = 0;
  static final MyApp instance = MyApp._instance();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: ((_) => PopularItemBloc()..add(FetchPopularItem()))),
        BlocProvider(
            create: ((_) => PromoSpesialBloc()..add(FetchSpesialItem()))),
        BlocProvider(
            create: ((_) =>
                RekomendasiItemBloc()..add(FetchRekomendasiMenu()))),
        BlocProvider(
            create: ((_) => PopularStoreBloc()..add(FetchStoreEvent()))),
        BlocProvider(create: ((_) => RanktokoBloc()..add(FetchRank()))),
        BlocProvider(
            create: ((_) => RankpembeliBloc()..add(FetchRankPembeli()))),
        BlocProvider(create: ((_) => MengikutiBloc()..add(FetchhMengikuti()))),
        BlocProvider(
            create: ((_) => KategoritokoBloc()..add(FetchKategoriToko()))),
        BlocProvider(create: ((_) => LokasitokoBloc()..add(FetchLokasiToko()))),
        BlocProvider(create: ((_) => BarangBloc()..add(FetchBarang()))),
        BlocProvider(create: ((_) => MallBloc()..add(FetchMall()))),
        BlocProvider(create: ((_) => TokoBloc()..add(FetchToko()))),
        BlocProvider(create: ((_) => PromoBloc()..add(FetchPromo()))),
        BlocProvider(create: ((_) => TerlarisBloc()..add(FetchTerlaris()))),
        BlocProvider(create: ((_) => TerbaruBloc()..add(FetchTerbaru()))),
        BlocProvider(create: ((_) => AllitemBloc()..add(FetchAllItem()))),
        BlocProvider(create: ((_) => CategoryBloc()..add(FetchCategory()))),
        BlocProvider(create: ((_) => ProductBloc()..add(FetchProducts()))),
        BlocProvider(create: ((_) => MenuBloc()..add(FetchMenu()))),
        BlocProvider(
            create: ((_) => NotificationsBloc()..add(FetchNotifications()))),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
