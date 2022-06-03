import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/models/product_store_model.dart';

class ListViewSemuaProduk extends StatelessWidget {
  SemuaProductModel semuaProductModel;

  ListViewSemuaProduk({Key? key, required this.semuaProductModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 182,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(semuaProductModel.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          margin: EdgeInsets.only(top: 145),
          height: 142,
          width: 180,
          decoration: BoxDecoration(
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
                semuaProductModel.name,
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id', symbol: "Rp. ", decimalDigits: 0)
                    .format(semuaProductModel.price),
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                semuaProductModel.storeName,
                style: GoogleFonts.roboto(
                    fontSize: 8,
                    color: Color(0xff63767E),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Color(0xffFDC74F),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    semuaProductModel.rating.toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "(${semuaProductModel.views})",
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 8,
                    width: 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff63767E))),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Terjual ${semuaProductModel.sold}",
                    style: GoogleFonts.roboto(
                        fontSize: 8,
                        color: Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 27,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff04AC54))),
                  onPressed: semuaProductModel.press,
                  child: Container(
                    child: Text(
                      "Beli",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
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
