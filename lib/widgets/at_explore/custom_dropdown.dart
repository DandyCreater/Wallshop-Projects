import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatelessWidget {
  final Function() press;
  final String title;
  const CustomDropDown({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(left: 10.0),
        width: 80.0,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4D4D4D)),
              overflow: TextOverflow.visible,
            ),
            Expanded(
              // height: 10.0,
              child: IconButton(
                padding: const EdgeInsets.only(bottom: 0),
                onPressed: press,
                icon: Icon(
                  Icons.expand_more,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
