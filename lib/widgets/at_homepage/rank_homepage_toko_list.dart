import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/models/homepage/rank_homepage_model.dart';

class ListTokoRank extends StatelessWidget {
  RankHomepageModel rankHomepageModel;
  ListTokoRank({Key? key, required this.rankHomepageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Container(
                height: 58,
                width: 20,
                child: Center(
                  child: Text(
                    rankHomepageModel.num.toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff05111A)),
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  color: Color(0xffFFBA1E),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(rankHomepageModel.imageUrl),
                      scale: 1.3),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Container(
                  height: 58,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      rankHomepageModel.title,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff05111A)),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 58,
                  child: Center(
                    child: Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: "Rp. ", decimalDigits: 0)
                          .format(rankHomepageModel.price),
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Color(0xff05111A),
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
          decoration: BoxDecoration(
            color: Color(0xffECECEC),
          ),
        )
      ],
    );
  }
}
