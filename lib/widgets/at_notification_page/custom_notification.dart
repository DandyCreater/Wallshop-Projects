import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/domain/models/notifications/notification_model.dart';

class CustomNotification extends StatelessWidget {
  final String imageUrl;
  final String iconUrl;
  final String title;
  final String timeinformation;
  final String lastrich;
  final String richsecondtitle;
  final String richtitle;
  final String subrichtitle;
  const CustomNotification(
      {Key? key,
      required this.imageUrl,
      required this.iconUrl,
      required this.title,
      required this.timeinformation,
      required this.lastrich,
      required this.richsecondtitle,
      required this.richtitle,
      required this.subrichtitle})
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
                    color: const Color(0xffFFBA1E),
                    image: DecorationImage(image: AssetImage(imageUrl))),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(iconUrl))),
                  ),
                ),
              ),
              const SizedBox(
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
                        text: title,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: subrichtitle,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 13)),
                          TextSpan(
                              text: richsecondtitle,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                          TextSpan(
                              text: lastrich,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 13)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      timeinformation,
                      style: GoogleFonts.roboto(
                          color: const Color(0xff63767E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const Flexible(
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
