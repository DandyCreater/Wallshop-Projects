import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/mengikuti_model.dart';

class CustomBarangContent extends StatelessWidget {
  final BarangModel barangModel;
  const CustomBarangContent({Key? key, required this.barangModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: ScreenHeight * 0.04,
                    width: ScreenWidth * 0.078,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(barangModel.imageUrlToko),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: ScreenHeight * 0.04,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          barangModel.namaToko,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff27282C)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          barangModel.kondisiProduk,
                          style: GoogleFonts.roboto(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff63767E)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              width: double.infinity,
              height: ScreenHeight * 0.51,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(barangModel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: ScreenHeight * 0.065,
              decoration: BoxDecoration(
                color: Color(0xffBC1533),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cek Sekarang",
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 2.5),
                        height: 10,
                        width: 6,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 12, 0, 0),
              child: Row(children: [
                Container(
                  height: ScreenHeight * 0.029,
                  width: ScreenWidth * 0.055,
                  child: SvgPicture.asset("assets/icons/icon_like.svg"),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/icons/icon_like.png"),
                  //       fit: BoxFit.cover),
                  // ),
                ),
                SizedBox(
                  width: 23,
                ),
                Container(
                  height: ScreenHeight * 0.029,
                  width: ScreenWidth * 0.055,
                  child: SvgPicture.asset("assets/icons/icon_comment.svg"),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/icons/icon_comment.png"),
                  //       fit: BoxFit.cover),
                  // ),
                ),
                SizedBox(
                  width: 23,
                ),
                Container(
                  height: ScreenHeight * 0.029,
                  width: ScreenWidth * 0.055,
                  child: SvgPicture.asset("assets/icons/icon_share.svg"),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/icons/icon_share.png"),
                  //       fit: BoxFit.cover),
                  // ),
                ),
                SizedBox(
                  width: ScreenWidth * 0.58,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: ScreenHeight * 0.029,
                  width: ScreenWidth * 0.055,
                  child: SvgPicture.asset("assets/icons/icon_saved.svg"),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: ("assets/icons/icon_saved.svg"),
                  //       fit: BoxFit.cover),
                  // ),
                ),
              ]),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "${barangModel.likes} likes",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: ScreenWidth * 0.9,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Text(barangModel.namaToko,
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff27282C),
                    )),
                SizedBox(
                  width: 3,
                ),
                Text(barangModel.deskripsi,
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff27282C),
                    )),
              ]),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text("Lihat semua ${barangModel.komentar} komentar",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff63767E))),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "${barangModel.waktu} Jam yang lalu",
                style: GoogleFonts.roboto(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff63767E)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
