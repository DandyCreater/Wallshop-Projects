import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/domain/models/explore/mall/mall_model.dart';

class CustomMallList extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final String information;
  const CustomMallList(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.address,
      required this.information})
      : super(key: key);

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
          // ignore: prefer_const_constructors
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
          margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          height: double.infinity,
          width: ScreenWidth * 0.27,
          decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(8),
                bottomLeft: const Radius.circular(8),
              ),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 8,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff393C43)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  address,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff757575)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(information,
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff01572A))),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "·",
                      style: TextStyle(fontSize: 15, color: Color(0xff757575)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("Closes 22:00",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff757575))),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Flexible(
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
