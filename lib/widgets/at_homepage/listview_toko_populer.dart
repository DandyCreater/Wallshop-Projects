import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewTokoPopuler extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ListViewTokoPopuler(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: ScreenHeight * 0.135,
          width: ScreenWidth * 0.255,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: ScreenHeight * 0.02,
        ),
        Text(title,
            style: GoogleFonts.roboto(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xff1F1F1F))),
        SizedBox(
          height: ScreenHeight * 0.01,
        ),
        Text(subtitle,
            style: GoogleFonts.roboto(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xff757575))),
      ],
    );
  }
}
