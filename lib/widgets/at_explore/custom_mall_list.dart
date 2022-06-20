import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/mall_model.dart';

class CustomMallList extends StatelessWidget {
  final MallModel mallModel;
  const CustomMallList({Key? key, required this.mallModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.03),
      height: ScreenHeight * 0.162,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 0,
            color: Color(0xffEDEDED),
            offset: Offset(0, 5),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
          height: double.infinity,
          width: ScreenWidth * 0.27,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                  image: AssetImage(mallModel.imageUrl), fit: BoxFit.cover)),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 8,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mallModel.name,
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff393C43)),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  mallModel.address,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff757575)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(mallModel.information,
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff01572A))),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "·",
                      style: TextStyle(fontSize: 15, color: Color(0xff757575)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Closes 22:00",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff757575))),
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ),
      ]),
    );
  }
}
