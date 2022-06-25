import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:slicing_homepage/models/explore/barang/barang_model.dart';
import 'package:slicing_homepage/models/explore/dropdown/dropdown_explore_model.dart';
import 'package:slicing_homepage/models/mengikuti_model.dart';
import 'package:slicing_homepage/models/mall_model.dart';
import 'package:slicing_homepage/models/product_store_model.dart';
import 'package:slicing_homepage/models/store_model.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_bottomsheet.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_dropdown.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_dropdown_barang.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_mall_list.dart';
import 'package:slicing_homepage/widgets/at_explore/shop_three_products.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_semuaproduk.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    //Widget Toko
    Widget Toko() => SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    pinned: true,
                    floating: false,
                    leadingWidth: ScreenWidth * 0.02,
                    centerTitle: true,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    title: Container(
                      height: 30,
                      child: Row(
                        children: [
                          CustomDropDown(
                            title: "Kategori",
                            press: () {
                              showCupertinoModalBottomSheet(
                                  barrierColor: Colors.black.withOpacity(0.6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  context: context,
                                  builder: (builder) {
                                    return Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: ListView.builder(
                                          itemCount: listKategoriExplore.length,
                                          itemBuilder: ((context, index) {
                                            return CustomButtomSheet(
                                              exploreModel:
                                                  listKategoriExplore[index],
                                              press: () {
                                                Navigator.pop(context);
                                              },
                                            );
                                          })),
                                    );
                                  });
                            },
                          ),
                          const SizedBox(width: 10.0),
                          CustomDropDown(
                            title: "Lokasi",
                            press: () {
                              showCupertinoModalBottomSheet(
                                  barrierColor: Colors.black.withOpacity(0.6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  context: context,
                                  builder: (builder) {
                                    return Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: ListView.builder(
                                          itemCount: listLokasiExplore.length,
                                          itemBuilder: ((context, index) {
                                            return CustomButtomSheet(
                                              exploreModel:
                                                  listLokasiExplore[index],
                                              press: () {
                                                Navigator.pop(context);
                                              },
                                            );
                                          })),
                                    );
                                  });
                            },
                          ),
                          const SizedBox(width: 10.0),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 100.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5, color: Color(0xffC4C4C4)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/icon_filter.png"),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Text(
                                    "Urutkan",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff4D4D4D)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    ShopThreeProducts(storeModel: listOfStore[0]),
                    SizedBox(
                      height: 7,
                    ),
                    ShopThreeProducts(storeModel: listOfStore[1]),
                    SizedBox(
                      height: 7,
                    ),
                    ShopThreeProducts(storeModel: listOfStore[2]),
                    SizedBox(
                      height: 7,
                    ),
                    ShopThreeProducts(storeModel: listOfStore[3]),
                    SizedBox(
                      height: 7,
                    ),
                    ShopThreeProducts(storeModel: listOfStore[4]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
              )),
        );

    //end of Toko

    Widget Barang() => SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  leadingWidth: 0,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  expandedHeight: 20,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CustomDropDown(
                        title: 'Kategori',
                        press: () {},
                      ),
                      const SizedBox(width: 10.0),
                      CustomDropDown(
                        title: 'Lokasi',
                        press: () {},
                      ),
                      const SizedBox(width: 10.0),
                      CustomDropDown(
                        title: 'Urutkan',
                        press: () {},
                      ),
                      const SizedBox(width: 10.0),
                    ],
                  ),
                ),
              ];
            }),
            body: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.52,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.48,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      MediaQuery.of(context).size.height,
                ),
                itemCount: listofBarangExplore.length,
                itemBuilder: ((context, index) {
                  return Container(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.only(bottom: 20),
                      child: CustomDropDownBarang(
                          barangModelExplore: listofBarangExplore[index]),
                    ),
                    //  Row(
                    //   children: [
                    //     ListViewSemuaProduk(
                    //       semuaProductModel: listSemuaProduct[index],
                    //     ),
                    //   ],
                    // ),
                  );
                })),
          ),
        );
    //end of widget Barang

    //Widget Mall
    Widget Mall() => SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  leadingWidth: ScreenWidth * 0.02,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  expandedHeight: 20,
                  flexibleSpace: Container(
                    color: Colors.white,
                    child: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      background: Column(
                        children: [
                          Container(height: 10, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  title: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CustomDropDown(
                        title: 'Lokasi',
                        press: () {},
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 100.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/icon_filter.png"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "Urutkan",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4D4D4D)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            }),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.015),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: ScreenHeight * 1.15,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: MallModelList.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            CustomMallList(mallModel: MallModelList[index]),
                            SizedBox(
                              height: ScreenHeight * 0.02,
                            )
                          ],
                        );
                      })),
                ),
              ),
            ),
          ),
        );

    //end of widget barang

    //end of mall widget
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 40,
          width: ScreenWidth,
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
        bottom: PreferredSize(
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
                  text: "Toko",
                ),
                Tab(text: "Barang"),
                Tab(text: "Mall"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Toko(),
          Barang(),
          Mall(),
        ],
      ),
    );
  }
}
