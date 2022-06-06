import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/category_store_model.dart';

class ListViewKategori extends StatelessWidget {
  CategoryStoreModel categoryStoreModel;
  ListViewKategori({Key? key, required this.categoryStoreModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffD9D9D9),
                image: DecorationImage(
                    image: AssetImage(categoryStoreModel.imageUrl)),
              ),
            ),
            SizedBox(width: 18),
            Container(
              height: 57,
              width: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryStoreModel.title,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xff3F3F3F),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    categoryStoreModel.jumlah + " produk",
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 200,
            // ),
            Expanded(
              child: Container(
                height: 10,
                width: 6,
                child: Icon(Icons.keyboard_arrow_right),
              ),
            )
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 315,
              height: 1,
              decoration: BoxDecoration(color: Color(0xffD9D9D9)),
            ),
          ],
        ),
        SizedBox(
          height: 13,
        )
      ],
    );
  }
}
