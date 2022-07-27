import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_homepage/domain/models/explore/toko/store_model.dart';

import 'package:slicing_homepage/presentation/pages/storepage/store_page.dart';

class ShopThreeProducts extends StatelessWidget {
  // final StoreModel storeModel;
  final String storeName;
  final String kilometer;
  final String name;
  final String description;
  final String firstprice;
  final String secondprice;
  final String thirdprice;
  final String imageUrlfirst;
  final String imageUrlsecond;
  final String imageUrlthird;
  final String jarak;

  const ShopThreeProducts(
      {Key? key,
      required this.storeName,
      required this.kilometer,
      required this.name,
      required this.description,
      required this.firstprice,
      required this.secondprice,
      required this.thirdprice,
      required this.imageUrlfirst,
      required this.imageUrlsecond,
      required this.imageUrlthird,
      required this.jarak})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      padding: const EdgeInsets.only(left: 11.0, top: 11.0, bottom: 11.0),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.31,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          // ignore: prefer_const_constructors
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 3,
            color: Color(0xffEDEDED),
            // color: Color(0xffEDEDED),
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFBA1E),
                      image: DecorationImage(
                        scale: 1.75,
                        image: AssetImage("assets/icons/icon_small_store.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        storeName,
                        style: GoogleFonts.roboto(
                            color: const Color(0xff393C43),
                            fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                                text: "Manado - Sekitar ",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xff63767e))),
                            TextSpan(
                              text: "${kilometer}${jarak}",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff63767e)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StorePage(
                                storeName: storeName,
                              )));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.035,
                  ),
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green.shade700),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Lihat Toko",
                    style: TextStyle(color: Colors.green.shade700),
                  )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(imageUrlfirst),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                            decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                        .format(double.tryParse(firstprice)),
                    style: GoogleFonts.roboto(
                        color: const Color(0xff63767E),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(imageUrlsecond),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                            decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                        .format(double.tryParse(secondprice)),
                    style: GoogleFonts.roboto(
                        color: const Color(0xff63767E),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(imageUrlthird),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                            decimalDigits: 0, symbol: "Rp. ", locale: 'id')
                        .format(double.tryParse(thirdprice)),
                    style: GoogleFonts.roboto(
                        color: const Color(0xff63767E),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.0001,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
