import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:slicing_homepage/models/product_store_model.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_semuaproduk.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_store_page.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // Widget Produk() =>
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
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
        actions: [
          // const SizedBox(width: 30.0),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 20.0),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(20),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffD9D9D9),
                          image: DecorationImage(
                              image: AssetImage('assets/icons/icon_shop.png'))),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "120",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Produk",
                            style: GoogleFonts.roboto(
                                fontSize: 13, color: Color(0xff63767E)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "100K",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Kunjungan",
                            style: GoogleFonts.roboto(
                                fontSize: 13, color: Color(0xff63767E)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2000",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Pengikut",
                            style: GoogleFonts.roboto(
                                fontSize: 13, color: Color(0xff63767E)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pixel Mart",
                      style: GoogleFonts.poppins(
                        color: Color(0xff393C43),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "Sport Fashion",
                      style: GoogleFonts.poppins(
                        color: Color(0xff63767E),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ",
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffD9D9D9), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mengikuti",
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Color(0xff63767E),
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.expand_more),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffD9D9D9), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          "Pesan",
                          style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Color(0xff63767E),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 35,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffD9D9D9), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          "Lihat Lokasi ",
                          style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Color(0xff63767E),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffD9D9D9)),
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/icon_image.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ))),
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    indicatorWeight: 0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: MD2Indicator(
                        indicatorHeight: 3,
                        indicatorColor: Colors.black,
                        indicatorSize: MD2IndicatorSize.normal),
                    tabs: [
                      Tab(
                        text: "Produk",
                      ),
                      Tab(text: "Kategori"),
                      Tab(text: "Promo"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terlaris",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff3F3F3F),
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            color: Color(0xff63767E),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listProductTerbaru.length,
                    itemBuilder: ((context, index) => Row(
                          children: [
                            ListViewStorePage(
                                productStore: listProductTerbaru[index]),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terbaru",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff3F3F3F),
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            color: Color(0xff63767E),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listProductTerlaris.length,
                    itemBuilder: ((context, index) => Row(
                          children: [
                            ListViewStorePage(
                                productStore: listProductTerlaris[index]),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Semua Produk",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3F3F3F)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 6, 0, 6),
                      height: 26,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffC4C4C4), width: 1),
                      ),
                      child: Row(children: [
                        Image.asset("assets/icons/icon_filter.png"),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          "Filter",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4D4D4D)),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 6),
                      height: 26,
                      width: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffC4C4C4), width: 1),
                      ),
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            "Urutkan",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4D4D4D)),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Center(child: Icon(Icons.expand_more)),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listSemuaProduct.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          ListViewSemuaProduk(
                            semuaProductModel: listSemuaProduct[index],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      );
                    })),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
