import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/homepage/homepage_model.dart';
import 'package:slicing_homepage/models/populer_model.dart';
import 'package:slicing_homepage/models/product_store_model.dart';
import 'package:slicing_homepage/widgets/at_homepage/features.dart';
import 'package:slicing_homepage/widgets/at_homepage/listview_item.dart';
import 'package:slicing_homepage/widgets/at_homepage/listview_toko_populer.dart';
import 'package:slicing_homepage/widgets/at_homepage/pageview_main_carousel.dart';
import 'package:slicing_homepage/widgets/at_homepage/listview_item_populer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Header
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, Bae Suzy',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Selamat datang di Wallshop'),
                              ],
                            ),
                          ),
                          Badge(
                            badgeContent: Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                            child: Icon(Icons.notifications),
                          ),
                          const SizedBox(width: 20.0),
                          CircleAvatar(
                            radius: 15.0,
                            backgroundImage:
                                AssetImage('assets/images/user_profile.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.31,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10.0),
                      child: Container(
                        margin: const EdgeInsets.all(3.0),
                        padding: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26.withOpacity(0.2),
                              offset: Offset(0, 1),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/user_profile.png'),
                            ),
                            const SizedBox(width: 20.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text('Total Belanja',
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff4D4D4D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.red.shade900,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'IDR 297,900,000',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff3F3F3F),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/rank');
                              },
                              child: Container(
                                width: 120.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Color(0xffF9FAFC),
                                ),
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/icon_crown.png'),
                                    Text(
                                      "Lihat Rank",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff3F3F3F)),
                                    ),
                                    const SizedBox(width: 10.0),
                                  ],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Item Populer
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Item populer",
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                          padding: EdgeInsets.only(left: 20),
                          scrollDirection: Axis.horizontal,
                          itemCount: listItemPopuler.length,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                ListViewItem(
                                    homePageItem: listItemPopuler[index]),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            );
                          })),
                    ),
                    //end of Item Populer
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    //Antar dan Ambil
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 15.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.1485,
                        child: Row(
                          children: [
                            Features(
                              title: 'Antar',
                              subTitle: 'Pesananmu di antar',
                              imageUrl: 'assets/images/slider3_1.png',
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Features(
                              title: 'Ambil',
                              subTitle: 'Datang ambil ke toko',
                              imageUrl: 'assets/images/slider3_2.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    //end of Antar dan Ambil
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //Toko Terpopuler
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, right: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Toko  terpopuler",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                          Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),

                    Container(
                      height: 175,
                      padding: EdgeInsets.only(left: 20),
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: tokoPopulerList.length,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                ListViewTokoPopuler(
                                  tokoPopulerModel: tokoPopulerList[index],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            );
                          })),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    //Promo Spesial
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10.0, right: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Promo Spesial",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    Container(
                      height: 220,
                      child: ListView.builder(
                          padding: EdgeInsets.only(left: 20),
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: listPromoSpesial.length,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                ListViewItem(
                                    homePageItem: listPromoSpesial[index]),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            );
                          })),
                    ),
                    //end of Promo Spesial
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    //Rekomendasi
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20.0),
                      child: Text(
                        "Rekomendasi Untuk Kamu",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    Container(
                      height: 220,
                      child: ListView.builder(
                          padding: EdgeInsets.only(left: 20),
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: listRekomendasi.length,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                ListViewItem(
                                    homePageItem: listRekomendasi[index]),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            );
                          })),
                    ),
                    //end of Rekomendasi
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09,
                      left: MediaQuery.of(context).size.width * 0.01),
                  child: PageViewMainCarousel(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
