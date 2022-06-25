import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  const Features({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.32,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            '$imageUrl',
          ),
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$title",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: 80.0,
                      child: Text(
                        "$subTitle",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.012,
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        size: 15.0,
                        color: Color(0xffBC1533),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Image
        ],
      ),
    );
  }
}
