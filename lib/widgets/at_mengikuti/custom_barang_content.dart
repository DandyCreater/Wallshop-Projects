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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.03),
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
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child: Container(
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
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      height: ScreenHeight * 0.03,
                      width: ScreenWidth * 0.074,
                      child: SvgPicture.asset("assets/icons/icon_three.svg"),
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
                ),
                SizedBox(
                  width: 23,
                ),
                Container(
                  height: ScreenHeight * 0.029,
                  width: ScreenWidth * 0.055,
                  child: SvgPicture.asset("assets/icons/icon_comment.svg"),
                ),
                SizedBox(
                  width: 23,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 8,
                  child: Container(
                    height: ScreenHeight * 0.029,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset("assets/icons/icon_share.svg")),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Container(
                    height: ScreenHeight * 0.029,
                    width: ScreenWidth * 0.055,
                    child: SvgPicture.asset("assets/icons/icon_saved.svg"),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.042),
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
              padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.042),
              child: RichText(
                text: TextSpan(
                  text: barangModel.namaToko,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xff27282C)),
                  children: <TextSpan>[
                    TextSpan(
                        text: barangModel.deskripsi,
                        style: GoogleFonts.roboto(
                            color: Color(0xff27282C),
                            fontWeight: FontWeight.w400,
                            fontSize: 13)),
                  ],
                ),
              ),
              // Row(children: [
              //   Text(barangModel.namaToko,
              //       style: GoogleFonts.roboto(
              //         fontSize: 13,
              //         fontWeight: FontWeight.w500,
              //         color: Color(0xff27282C),
              //       )),
              //   SizedBox(
              //     width: 3,
              //   ),
              //   Flexible(
              //     fit: FlexFit.tight,
              //     child: Text(
              //       barangModel.deskripsi,
              //       style: GoogleFonts.roboto(
              //         fontSize: 13,
              //         fontWeight: FontWeight.w400,
              //         color: Color(0xff27282C),
              //       ),
              //       // textAlign: TextAlign.justify,
              //     ),
              //   ),
              // ]),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.042),
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
              padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.042),
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
