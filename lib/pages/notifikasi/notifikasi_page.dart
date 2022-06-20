import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/notifications/notification_model.dart';
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
                color: Color(0xff3F3F3F)),
          ),
          leading: IconButton(
            padding: const EdgeInsets.only(left: 20.0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: ListofNotification.length,
            itemBuilder: ((context, index) {
              return CustomNotification(
                  notificationModel: ListofNotification[index]);
            })));
  }
}
