import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class RankHomepage extends StatelessWidget {
  final String num;
  final String imageUrl;
  final String title;
  final String price;
  final double size;
  const RankHomepage(
      {Key? key,
      required this.num,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              SizedBox(
                height: 58,
                width: 20,
                child: Center(
                  child: Text(
                    num,
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff05111A)),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  color: const Color(0xffFFBA1E),
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage(imageUrl), scale: size),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: SizedBox(
                  height: 58,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff05111A)),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SizedBox(
                  height: 58,
                  child: Center(
                    child: Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: "Rp. ", decimalDigits: 0)
                          .format(double.parse(price)),
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: const Color(0xff05111A),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffECECEC),
          ),
        )
      ],
    );
  }
}
