import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ListViewStorePage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String discon;
  final String discPrice;

  const ListViewStorePage(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.discon,
      required this.discPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 106,
          width: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          margin: const EdgeInsets.only(top: 90),
          width: 104,
          height: 76,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 0,
                  color: Color(0xffEDEDED),
                  offset: Offset(0, 4),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: GoogleFonts.roboto(
                  color: const Color(0xff3F3F3F),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              NumberFormat.currency(
                      decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                  .format(double.tryParse(price)),
              style: GoogleFonts.roboto(
                  color: const Color(0xff3F3F3F),
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffBC1533)),
                  child: Center(
                    child: Text(
                      "${discon}%",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  NumberFormat.currency(
                          decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                      .format(double.tryParse(discPrice)),
                  style: GoogleFonts.roboto(
                      color: const Color(0xff4D4D4D),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }
}
