import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicing_homepage/data/bloc/homepage_bloc/popularItem/popular_item_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/promo/promo_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/promoSpesial/promo_spesial_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/rekomendasiItem/rekomendasi_item_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/tokopopuler/popular_store_bloc.dart';
import 'package:slicing_homepage/widgets/at_homepage/features.dart';
import 'package:slicing_homepage/widgets/at_homepage/listview_item.dart';
import 'package:slicing_homepage/widgets/at_homepage/listview_toko_populer.dart';
import 'package:slicing_homepage/widgets/at_homepage/pageview_main_carousel.dart';

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
                padding: const EdgeInsets.only(top: 20.0),
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
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                Text(
                                  'Hi, Bae Suzy',
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text('Selamat datang di Wallshop'),
                              ],
                            ),
                          ),
                          Badge(
                            badgeContent: const Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                            child: const Icon(Icons.notifications),
                          ),
                          const SizedBox(width: 20.0),
                          const CircleAvatar(
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
                      padding: const EdgeInsets.only(left: 20, right: 10.0),
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
                              offset: const Offset(0, 1),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
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
                                              color: const Color(0xff4D4D4D),
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
                                        color: const Color(0xff3F3F3F),
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
                                  color: const Color(0xffF9FAFC),
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
                                          color: const Color(0xff3F3F3F)),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Expanded(
                            child: const Text(
                              "Item populer",
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),

                    //Item Popular Bloc Area
                    BlocBuilder<PopularItemBloc, PopularItemState>(
                      builder: (context, state) {
                        if (state is PopularItemSuccess) {
                          return SizedBox(
                            height: 220,
                            child: ListView.builder(
                                padding: const EdgeInsets.only(left: 20),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.menu.item!.length,
                                itemBuilder: ((context, index) {
                                  var items = state.menu.item;
                                  // ignore: curly_braces_in_flow_control_structures
                                  return Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: ListViewItem(
                                          imageUrl: items![index]
                                              .imageUrl!
                                              .toString(),
                                          name: items[index].name!.toString(),
                                          price: items[index].price!.toString(),
                                          discon:
                                              items[index].discon!.toString(),
                                          discPrice: items[index]
                                              .discPrice!
                                              .toString(),
                                          city: items[index].city!.toString(),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                    //end of Item Populer
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    //Antar dan Ambil
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.1485,
                        child: Row(
                          children: [
                            // ignore: prefer_const_constructors
                            Features(
                              title: 'Antar',
                              subTitle: 'Pesananmu di antar',
                              imageUrl: 'assets/images/slider3_1.png',
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            // ignore: prefer_const_constructors
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
                          const Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),

                    BlocBuilder<PopularStoreBloc, PopularStoreState>(
                      builder: (context, state) {
                        if (state is PopularStoreSuccess) {
                          return Container(
                            height: 175,
                            padding: const EdgeInsets.only(left: 20),
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.store.item!.length,
                                itemBuilder: ((context, index) {
                                  var items = state.store.item;
                                  return Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: ListViewTokoPopuler(
                                            imageUrl: items![index]
                                                .imageUrl!
                                                .toString(),
                                            title:
                                                items[index].title!.toString(),
                                            subtitle: items[index]
                                                .subtitle!
                                                .toString()),
                                      ),
                                    ],
                                  );
                                })),
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
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
                          const Text("Lihat semua"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    BlocBuilder<PromoSpesialBloc, PromoSpesialState>(
                      builder: (context, state) {
                        if (state is PromoSpesialSuccess) {
                          return SizedBox(
                            height: 220,
                            child: ListView.builder(
                                padding: const EdgeInsets.only(left: 20),
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.menu.item!.length,
                                itemBuilder: ((context, index) {
                                  var items = state.menu.item;
                                  return Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: ListViewItem(
                                          imageUrl: items![index]
                                              .imageUrl!
                                              .toString(),
                                          discon:
                                              items[index].discon!.toString(),
                                          discPrice: items[index]
                                              .discPrice!
                                              .toString(),
                                          name: items[index].name!.toString(),
                                          price: items[index].price!.toString(),
                                          city: items[index].city!.toString(),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
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
                    BlocBuilder<RekomendasiItemBloc, RekomendasiItemState>(
                      builder: (context, state) {
                        if (state is RekomendasiItemSuccess) {
                          return SizedBox(
                            height: 220,
                            child: ListView.builder(
                                padding: const EdgeInsets.only(left: 20),
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.menu.item!.length,
                                itemBuilder: ((context, index) {
                                  var items = state.menu.item;
                                  return Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: ListViewItem(
                                          imageUrl: items![index]
                                              .imageUrl!
                                              .toString(),
                                          name: items[index].name!.toString(),
                                          price: items[index].price!.toString(),
                                          discon:
                                              items[index].discon!.toString(),
                                          discPrice: items[index]
                                              .discPrice!
                                              .toString(),
                                          city: items[index].city!.toString(),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                    //end of Rekomendasi
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: BlocBuilder<PromoBloc, PromoState>(
                  builder: (context, state) {
                    if (state is PromoSuccess) {
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.09,
                                left: MediaQuery.of(context).size.width * 0.01),
                            child: PageViewMainCarousel(
                                source: state.okContentPromo!),
                          ),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
