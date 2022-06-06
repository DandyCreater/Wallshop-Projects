import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/models/product_store_model.dart';
import 'package:slicing_homepage/pages/storepage/custom_button_store_page.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_store_page.dart';

class ProdukStorePage extends StatelessWidget {
  const ProdukStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 40,
          width: 270,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Color(0xffF0F3F8),
              hintText: "cari barang atau toko",
              hintStyle: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
              prefixIcon: Container(
                padding: EdgeInsets.fromLTRB(10, 11, 6, 16),
                child: Icon(
                  Icons.search,
                  color: Color(0xff7C7C7C),
                  size: 20,
                ),
              ),
              prefixIconConstraints: BoxConstraints(maxWidth: 100),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(11),
              ),
              contentPadding: EdgeInsets.fromLTRB(26, 8, 26, 14),
            ),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 40.0),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 411,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      image: AssetImage("assets/images/kaos.png"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kaos Tshirt Chicago Bulls\nEdisi 2022",
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, bottom: 3),
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffD9D9D9)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/icon_star.png'),
                                        fit: BoxFit.cover),
                                  )),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "4.9",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "(140)",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, bottom: 3),
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffD9D9D9)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "Terjual",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "1270",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, bottom: 3),
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffD9D9D9)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "Dilihat",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  "13200",
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      color: Color(0xff4D4D4D),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "IDR 79,000",
                      style: GoogleFonts.roboto(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Text(
                          "Dijual Oleh",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xff63767E),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffD9D9D9)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Informasi Produk",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          Text("Kondisi",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Color(0xff63767E),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 111,
                          ),
                          Text("Baru",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Color(0xff63767E),
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      //Min.Pemesanan
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Min. Pemesanan",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Color(0xff63767E),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 55,
                          ),
                          Text("1 Buah",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Color(0xff63767E),
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      //Kategori
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Kategori",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Color(0xff63767E),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 105,
                          ),
                          Text("Kaos",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 21),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt ",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: Color(0xff63767E),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Baca Selengkapnya",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Produk lainnya di toko ini",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff3F3F3F),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          Text("Lihat Semua",
                              style: GoogleFonts.roboto(
                                  color: Color(0xff000000).withOpacity(0.5),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listProductLainnya.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          ListViewStorePage(
                              productStore: listProductLainnya[index]),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      );
                    })),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  CustomButtonStorePage(
                      title: "Masukan keranjang",
                      colorSide: Colors.black,
                      bgBtnColor: Colors.white,
                      colortitle: Colors.black,
                      press: () {}),
                  SizedBox(
                    width: 7,
                  ),
                  CustomButtonStorePage(
                      title: "Beli Langsung",
                      colorSide: Colors.black,
                      bgBtnColor: Colors.black,
                      colortitle: Colors.white,
                      press: () {}),
                ]),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
