import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/data/bloc/notifications_bloc/notifications_bloc.dart';
import 'package:slicing_homepage/domain/models/notifications/notification_model.dart';

import 'package:slicing_homepage/widgets/at_notification_page/custom_notification.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 40,
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Notifikasi",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: const Color(0xff3F3F3F)),
          ),
          leading: IconButton(
            padding: const EdgeInsets.only(left: 20.0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: BlocBuilder<NotificationsBloc, NotificationsState>(
          builder: (context, state) {
            if (state is NotificationsSuccess) {
              return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.okContentResponse!.items!.length,
                  itemBuilder: ((context, index) {
                    var items = state.okContentResponse!.items;
                    return CustomNotification(
                        imageUrl: items![index].imageUrl.toString(),
                        iconUrl: items[index].iconUrl.toString(),
                        title: items[index].title.toString(),
                        timeinformation:
                            items[index].timeinformation.toString(),
                        lastrich: items[index].lastrich.toString(),
                        richsecondtitle:
                            items[index].richsecondtitle.toString(),
                        richtitle: items[index].richtitle.toString(),
                        subrichtitle: items[index].subrichtitle.toString());
                  }));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
