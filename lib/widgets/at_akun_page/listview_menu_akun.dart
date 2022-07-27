import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/domain/models/menu/akun_menu_model.dart';

class ListViewMenuAkun extends StatelessWidget {
  final String imageUrl;
  final String title;
  ListViewMenuAkun({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                  image: DecorationImage(image: AssetImage(imageUrl)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color(0xff2E3A59),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(
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
                decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          )
        ],
      ),
    );
  }
}
