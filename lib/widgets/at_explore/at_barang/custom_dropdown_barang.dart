import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/domain/models/explore/barang/barang_model.dart';

class CustomDropDownBarang extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String sold;
  final String kota;
  final String distance;
  const CustomDropDownBarang(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.sold,
      required this.kota,
      required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: ScreenHeight * 0.45,
      width: ScreenWidth * 0.42,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          spreadRadius: 2,
          blurRadius: 2,
          color: Colors.grey.withOpacity(0.2),
          offset: const Offset(0, 2),
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
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.only(left: 7, right: 14),
              width: double.infinity,
              child: Text(
                title,
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(left: 7, top: 8),
              child: Text(
                NumberFormat.currency(
                        decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                    .format(double.tryParse(price)),
                style: GoogleFonts.roboto(
                    color: const Color(0xffE94E30),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: ScreenHeight * 0.01,
          ),
          Container(
            padding: const EdgeInsets.only(left: 7),
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
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${sold} Terjual",
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
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                  height: 10,
                  child: SvgPicture.asset("assets/icons/icon_pin.svg"),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "KOTA ${kota}",
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
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              "Sekitar ${distance} km",
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
