import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonStorePage extends StatelessWidget {
  final String title;
  final Color colorSide;
  final Color bgBtnColor;
  final Color colortitle;
  final Function() press;
  const CustomButtonStorePage(
      {Key? key,
      required this.title,
      required this.colorSide,
      required this.bgBtnColor,
      required this.colortitle,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 182,
      height: 40,
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: colorSide, width: 1),
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(bgBtnColor)),
          onPressed: () {},
          child: Text(
            "Masukan Keranjang",
            style: GoogleFonts.roboto(
                fontSize: 11, color: colortitle, fontWeight: FontWeight.w500),
          )),
    );
  }
}
