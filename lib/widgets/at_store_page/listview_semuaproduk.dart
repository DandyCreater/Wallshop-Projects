import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ListViewSemuaProduk extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String storeName;
  final String rating;
  final String views;
  final String sold;
  final Function() press;

  ListViewSemuaProduk(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.storeName,
      required this.rating,
      required this.views,
      required this.sold,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.417,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.17,
          ),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.417,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id', symbol: "Rp. ", decimalDigits: 0)
                    .format(double.tryParse(price)),
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                storeName,
                style: GoogleFonts.roboto(
                    fontSize: 8,
                    color: const Color(0xff63767E),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    size: 12,
                    color: Color(0xffFDC74F),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating,
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: const Color.fromARGB(255, 173, 158, 158),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "(${views})",
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: const Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 8,
                    width: 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff63767E))),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Terjual ${sold}",
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: const Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 27,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: press,
                  child: SizedBox(
                    child: Text(
                      "Beli",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
