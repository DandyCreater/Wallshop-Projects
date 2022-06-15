import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatelessWidget {
  final String title;
  const CustomDropDown({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      width: 90.0,
      height: 30.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffC4C4C4), width: 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            "$title",
            style: GoogleFonts.roboto(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff4D4D4D)),
          ),
          Expanded(
            child: IconButton(
              padding: const EdgeInsets.only(bottom: 0),
              onPressed: () {},
              icon: Icon(Icons.expand_more),
            ),
          )
        ],
      ),
    );
  }
}
