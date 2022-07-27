import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/product/product_bloc.dart';
import 'package:slicing_homepage/widgets/at_store_page/custom_button_store_page.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_store_page.dart';

class ProdukStorePage extends StatelessWidget {
  const ProdukStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: SizedBox(
          height: 40,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: const Color(0xffF0F3F8),
              hintText: "cari barang atau toko",
              hintStyle:
                  const TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
              prefixIcon: Container(
                padding: const EdgeInsets.fromLTRB(10, 11, 6, 16),
                child: const Icon(
                  Icons.search,
                  color: Color(0xff7C7C7C),
                  size: 20,
                ),
              ),
              prefixIconConstraints: const BoxConstraints(maxWidth: 100),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(11),
              ),
              contentPadding: const EdgeInsets.fromLTRB(26, 8, 26, 14),
            ),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 20.0),
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(0),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/kaos.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kaos Tshirt Chicago Bulls\nEdisi 2022",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w400)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 3),
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD9D9D9)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 16,
                                      width: 16,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/icon_star.png'),
                                            fit: BoxFit.cover),
                                      )),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "4.9",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "(140)",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 3),
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD9D9D9)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "Terjual",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "1270",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 5, bottom: 3, right: 5),
                              height: 30,
                              width: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD9D9D9)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "Dilihat",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "13200",
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          color: const Color(0xff4D4D4D),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "IDR 79,000",
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Dijual Oleh",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: const Color(0xff63767E),
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Pixel Mart",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 5,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Informasi Produk",
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text("Kondisi",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: const Color(0xff63767E),
                                        fontWeight: FontWeight.w400)),
                              ),
                              Text("Baru",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: const Color(0xff63767E),
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          //Min.Pemesanan
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 197,
                                child: Text("Min. Pemesanan",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: const Color(0xff63767E),
                                        fontWeight: FontWeight.w400)),
                              ),
                              Text("1 Buah",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: const Color(0xff63767E),
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          //Kategori
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text("Kategori",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: const Color(0xff63767E),
                                        fontWeight: FontWeight.w400)),
                              ),
                              Text("Kaos",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 21),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt ",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: const Color(0xff63767E),
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Baca Selengkapnya",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 19,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Produk lainnya di toko ini",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff3F3F3F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              Text("Lihat Semua",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.5),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      print(state);
                      if (state is ProductSuccess) {
                        return SizedBox(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemCount:
                                  state.okContentProductCategory!.item!.length,
                              itemBuilder: ((context, index) {
                                var items =
                                    state.okContentProductCategory!.item;
                                return Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      child: ListViewStorePage(
                                        imageUrl:
                                            items![index].imageUrl.toString(),
                                        name: items[index].name.toString(),
                                        price: items[index].price.toString(),
                                        discon: items[index].discon.toString(),
                                        discPrice:
                                            items[index].discPrice.toString(),
                                      ),
                                    )
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
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white,
                  height: 60,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: CustomButtonStorePage(
                              title: "Masukan keranjang",
                              colorSide: Colors.black,
                              bgBtnColor: Colors.white,
                              colortitle: Colors.black,
                              press: () {}),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: CustomButtonStorePage(
                              title: "Beli Langsung",
                              colorSide: Colors.black,
                              bgBtnColor: Colors.black,
                              colortitle: Colors.white,
                              press: () {}),
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
