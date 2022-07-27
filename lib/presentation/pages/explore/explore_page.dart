import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/barang_bloc/barang_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/kategoritoko_bloc/kategoritoko_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/lokasitoko_bloc/lokasitoko_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/mall_bloc/mall_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/toko_bloc/toko_bloc.dart';
import 'package:slicing_homepage/domain/models/explore/barang/barang_model.dart';
import 'package:slicing_homepage/domain/models/explore/dropdown/explore_kategori_toko_model.dart';
import 'package:slicing_homepage/domain/models/explore/mall/mall_model.dart';

import 'package:slicing_homepage/widgets/at_explore/at_toko/custom_bottomsheet.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_dropdown.dart';
import 'package:slicing_homepage/widgets/at_explore/at_barang/custom_dropdown_barang.dart';
import 'package:slicing_homepage/widgets/at_explore/at_mall/custom_mall_list.dart';
import 'package:slicing_homepage/widgets/at_explore/at_toko/shop_three_products.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_semuaproduk.dart';

import '../../../domain/models/explore/toko/store_model.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    BlocProvider.of<BarangBloc>(context).add(FetchBarang());
    BlocProvider.of<MallBloc>(context).add(FetchMall());
    BlocProvider.of<TokoBloc>(context).add(FetchToko());

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
                    title: SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          CustomDropDown(
                            title: "Kategori",
                            press: () {
                              // ignore: avoid_single_cascade_in_expression_statements
                              BlocProvider.of<KategoritokoBloc>(context)
                                ..add(FetchKategoriToko());
                              showCupertinoModalBottomSheet(
                                  barrierColor: Colors.black.withOpacity(0.6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  context: context,
                                  builder: (builder) {
                                    return Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.75,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          color: Colors.white,
                                        ),
                                        child: BlocBuilder<KategoritokoBloc,
                                            KategoritokoState>(
                                          builder: (context, state) {
                                            if (state is KategoritokoSuccess) {
                                              return ListView.builder(
                                                  itemCount: state
                                                      .okContentKategoriToko
                                                      .listItem!
                                                      .length,
                                                  itemBuilder:
                                                      ((context, index) {
                                                    var items = state
                                                        .okContentKategoriToko
                                                        .listItem;
                                                    return Column(
                                                      children: [
                                                        CustomButtomSheet(
                                                          press: () {},
                                                          imageUrl:
                                                              items![index]
                                                                  .imageUrl!
                                                                  .toString(),
                                                          title: items[index]
                                                              .title!
                                                              .toString(),
                                                        ),
                                                      ],
                                                    );
                                                  }));
                                            }
                                            return const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            );
                                          },
                                        ));
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: BlocBuilder<LokasitokoBloc,
                                          LokasitokoState>(
                                        builder: (context, state) {
                                          if (state is LokasitokoSuccess) {
                                            return ListView.builder(
                                                itemCount: state
                                                    .okContentLokasiToko
                                                    .listItem!
                                                    .length,
                                                itemBuilder: ((context, index) {
                                                  var items = state
                                                      .okContentLokasiToko
                                                      .listItem;
                                                  return Column(
                                                    children: [
                                                      CustomButtomSheet(
                                                          imageUrl:
                                                              items![index]
                                                                  .imageUrl!
                                                                  .toString(),
                                                          title: items[index]
                                                              .title!
                                                              .toString(),
                                                          press: () {})
                                                    ],
                                                  );
                                                }));
                                          }
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        },
                                      ),
                                    );
                                  });
                            },
                          ),
                          const SizedBox(width: 10.0),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 100.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5, color: const Color(0xffC4C4C4)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/icon_filter.png"),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(width: 10.0),
                                const Expanded(
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
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: BlocBuilder<TokoBloc, TokoState>(
                  builder: (context, state) {
                    if (state is TokoSuccess) {
                      return ListView.builder(
                          itemCount: 1,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                for (var items
                                    in state.okContentToko.storeData!)
                                  ShopThreeProducts(
                                      storeName: items.storeName!,
                                      kilometer: items.kiloMeter!,
                                      name:
                                          items.product![index].name.toString(),
                                      description: items
                                          .product![index].description
                                          .toString(),
                                      jarak: items.jarak!.toString(),
                                      imageUrlfirst:
                                          items.product![0].imageUrl.toString(),
                                      firstprice:
                                          items.product![0].price.toString(),
                                      imageUrlsecond:
                                          items.product![1].imageUrl.toString(),
                                      secondprice:
                                          items.product![1].price.toString(),
                                      imageUrlthird:
                                          items.product![2].imageUrl.toString(),
                                      thirdprice:
                                          items.product![2].price.toString()),
                              ],
                            );
                          }));
                    }

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
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
                      const SizedBox(
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
            body: BlocBuilder<BarangBloc, BarangState>(
              builder: (context, state) {
                if (state is BarangSuccess) {
                  return GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent:
                            MediaQuery.of(context).size.width * 0.52,
                        mainAxisExtent:
                            MediaQuery.of(context).size.height * 0.48,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                      ),
                      itemCount: state.okContentBarang.item!.length,
                      itemBuilder: ((_, index) {
                        var items = state.okContentBarang.item;
                        return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            margin: const EdgeInsets.only(bottom: 20),
                            child: CustomDropDownBarang(
                                imageUrl: items![index].imageUrl.toString(),
                                title: items[index].title.toString(),
                                price: items[index].price.toString(),
                                sold: items[index].sold.toString(),
                                kota: items[index].kota.toString(),
                                distance: items[index].distance.toString()));
                      }));
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
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
                      const SizedBox(
                        width: 15,
                      ),
                      CustomDropDown(
                        title: 'Lokasi',
                        press: () {},
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: 100.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: const Color(0xffC4C4C4)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 20,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/icon_filter.png"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(width: 10.0),
                            const Expanded(
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
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: ScreenHeight,
                  child: BlocBuilder<MallBloc, MallState>(
                    builder: (context, state) {
                      if (state is MallSuccess) {
                        return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.okContentMall.items!.length,
                            itemBuilder: ((context, index) {
                              var items = state.okContentMall.items;
                              return Column(
                                children: [
                                  CustomMallList(
                                      imageUrl:
                                          items![index].imageUrl!.toString(),
                                      name: items[index].name!.toString(),
                                      address: items[index].address!.toString(),
                                      information:
                                          items[index].information!.toString()),
                                  SizedBox(
                                    height: ScreenHeight * 0.02,
                                  )
                                ],
                              );
                            }));
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
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
        title: SizedBox(
          height: 40,
          width: ScreenWidth,
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
          // const SizedBox(width: 30.0),
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: DecoratedBox(
            decoration: const BoxDecoration(
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
              indicator: const MD2Indicator(
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
        physics: const NeverScrollableScrollPhysics(),
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
