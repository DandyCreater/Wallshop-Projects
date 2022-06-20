import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/notifications/notification_model.dart';

class CustomNotification extends StatelessWidget {
  NotificationModel notificationModel;
  CustomNotification({Key? key, required this.notificationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: ScreenHeight * 0.02,
            horizontal: ScreenWidth * 0.055,
          ),
          child: Row(
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFBA1E),
                    image: DecorationImage(
                        image: AssetImage(notificationModel.imageUrl))),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(notificationModel.iconUrl))),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 6,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: notificationModel.title,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: notificationModel.subrichtitle,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 13)),
                          TextSpan(
                              text: notificationModel.richsecondtitle,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                          TextSpan(
                              text: notificationModel.lastrich,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 13)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      notificationModel.timeinformation,
                      style: GoogleFonts.roboto(
                          color: Color(0xff63767E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.grey.withOpacity(0.2),
        )
      ],
    );
  }
}
