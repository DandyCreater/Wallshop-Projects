import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/populer_model.dart';

class ListViewTokoPopuler extends StatelessWidget {
  TokoPopulerModel tokoPopulerModel;
  ListViewTokoPopuler({Key? key, required this.tokoPopulerModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      // margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ScreenHeight * 0.135,
            width: ScreenWidth * 0.255,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(tokoPopulerModel.imageUrl),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: ScreenHeight * 0.02,
          ),
          Text(tokoPopulerModel.title,
              style: GoogleFonts.roboto(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1F1F1F))),
          SizedBox(
            height: ScreenHeight * 0.01,
          ),
          Text(tokoPopulerModel.Subtitle,
              style: GoogleFonts.roboto(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff757575))),
        ],
      ),
    );
  }
}
