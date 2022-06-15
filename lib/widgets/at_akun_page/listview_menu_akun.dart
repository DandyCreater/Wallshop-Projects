import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/akun_menu_model.dart';

class ListViewMenuAkun extends StatelessWidget {
  AkunMenuModel akunMenuModel;
  ListViewMenuAkun({Key? key, required this.akunMenuModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(akunMenuModel.imageUrl)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(
                        akunMenuModel.title,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Color(0xff2E3A59),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Container(
                  // padding: EdgeInsets.only(left: 40),
                  height: 10,
                  width: 6,
                  child: Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 1,
                  decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            )
          ],
        ),
      ),
    );
  }
}
