import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/models/homepage/homepage_model.dart';
import 'package:slicing_homepage/models/product_store_model.dart';

class ListViewItem extends StatelessWidget {
  HomePageItem homePageItem;
  ListViewItem({Key? key, required this.homePageItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(left: 10),
            height: 100,
            width: 97,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(homePageItem.imageUrl), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
            margin: EdgeInsets.only(
              // left: 10,
              top: 99,
            ),
            width: 97,
            height: 125,
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
              Flexible(
                child: Container(
                  height: 35,
                  child: Text(
                    homePageItem.name,
                    style: GoogleFonts.roboto(
                        color: Color(0xff3F3F3F),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                NumberFormat.currency(
                        decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                    .format(homePageItem.price),
                style: GoogleFonts.roboto(
                    color: Color(0xff3F3F3F),
                    fontSize: 11,
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
                        "${homePageItem.discon}%",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    NumberFormat.currency(
                            decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                        .format(homePageItem.discPrice),
                    style: GoogleFonts.roboto(
                      color: Color(0xff4D4D4D),
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset("assets/icons/icon_pin.svg"),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 10,
                    child: Text(
                      homePageItem.city,
                      style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3F3F3F)),
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
