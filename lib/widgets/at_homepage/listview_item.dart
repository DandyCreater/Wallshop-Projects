import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ListViewItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String discon;
  final String discPrice;
  final String city;

  const ListViewItem(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.discon,
      required this.discPrice,
      required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // margin: EdgeInsets.only(left: 10),
          height: 100,
          width: 97,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white,
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
          margin: const EdgeInsets.only(
            // left: 10,
            top: 99,
          ),
          width: 97,
          height: 108,
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
            Flexible(
              child: SizedBox(
                height: 30,
                child: Text(
                  name,
                  style: GoogleFonts.roboto(
                      color: const Color(0xff3F3F3F),
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              NumberFormat.currency(
                      decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                  .format(double.tryParse(price)),
              style: GoogleFonts.roboto(
                  color: const Color(0xff3F3F3F),
                  fontSize: 11,
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
                          fontSize: 8,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  NumberFormat.currency(
                          decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                      .format(double.tryParse(discPrice)),
                  style: GoogleFonts.roboto(
                    color: const Color(0xff4D4D4D),
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                  child: SvgPicture.asset("assets/icons/icon_pin.svg"),
                ),
                const SizedBox(
                  width: 3,
                ),
                SizedBox(
                  height: 10,
                  child: Text(
                    city,
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff3F3F3F)),
                  ),
                )
              ],
            )
          ]),
        ),
      ],
    );
  }
}
