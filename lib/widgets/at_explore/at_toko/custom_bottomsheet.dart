import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/domain/models/explore/dropdown/explore_kategori_toko_model.dart';

class CustomButtomSheet extends StatelessWidget {
  final Function() press;
  final String imageUrl;
  final String title;
  CustomButtomSheet(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFECB70),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    scale: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                child: DefaultTextStyle(
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              child: Text(title,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
            )),
          ],
        ),
      ),
    );
  }
}
