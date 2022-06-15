import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/models/product_store_model.dart';

class ListViewItem extends StatelessWidget {
  ProductStore productStore;
  ListViewItem({Key? key, required this.productStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 106,
            width: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(productStore.imageUrl), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            margin: EdgeInsets.only(
              left: 20,
              top: 90,
            ),
            width: 104,
            height: 76,
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                productStore.name,
                style: GoogleFonts.roboto(
                    color: Color(0xff3F3F3F),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                NumberFormat.currency(
                        decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                    .format(productStore.price),
                style: GoogleFonts.roboto(
                    color: Color(0xff3F3F3F),
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffBC1533)),
                    child: Center(
                      child: Text(
                        "${productStore.discon}%",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    NumberFormat.currency(
                            decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                        .format(productStore.discPrice),
                    style: GoogleFonts.roboto(
                        color: Color(0xff4D4D4D),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
