import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/models/explore/barang/barang_model.dart';

class CustomDropDownBarang extends StatelessWidget {
  BarangModelExplore barangModelExplore;
  CustomDropDownBarang({Key? key, required this.barangModelExplore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: ScreenHeight * 0.48,
      width: ScreenWidth * 0.42,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          spreadRadius: 2,
          blurRadius: 2,
          color: Colors.grey.withOpacity(0.2),
          offset: Offset(0, 2),
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: ScreenHeight * 0.225,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(barangModelExplore.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: EdgeInsets.only(left: 7, right: 14),
              width: double.infinity,
              child: Text(
                barangModelExplore.title,
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(left: 7, top: 8),
              child: Text(
                NumberFormat.currency(
                        decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                    .format(barangModelExplore.price),
                style: GoogleFonts.roboto(
                    color: Color(0xffE94E30),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: ScreenHeight * 0.01,
          ),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xffFFBA1E),
                          size: 12,
                        ),
                      ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${barangModelExplore.sold} Terjual",
                      style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: ScreenHeight * 0.02,
          ),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 10,
                  child: SvgPicture.asset("assets/icons/icon_pin.svg"),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "KOTA ${barangModelExplore.kota}",
                  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff757575)),
                )
              ],
            ),
          ),
          SizedBox(
            height: ScreenHeight * 0.01,
          ),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Text(
              "Sekitar ${barangModelExplore.distance} km",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
