import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/all_item/allitem_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/category/category_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/terbaru/terbaru_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/storepage/terlaris/terlaris_bloc.dart';
import 'package:slicing_homepage/data/bloc/explore_bloc/toko_bloc/toko_bloc.dart';
import 'package:slicing_homepage/data/bloc/homepage_bloc/tokopopuler/popular_store_bloc.dart';
import 'package:slicing_homepage/domain/models/storepage/category_store_model.dart';
import 'package:slicing_homepage/presentation/pages/storepage/produk_store_page.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_kategori.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_semuaproduk.dart';
import 'package:slicing_homepage/widgets/at_store_page/listview_store_page.dart';

class StorePage extends StatefulWidget {
  final String storeName;
  const StorePage({Key? key, required this.storeName}) : super(key: key);

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

  //Widget Produk.
  Widget Produk() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Terlaris",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: const Color(0xff3F3F3F),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  child: Text(
                    "Lihat Semua",
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: const Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 210,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: BlocBuilder<TerlarisBloc, TerlarisState>(
              builder: (context, state) {
                if (state is TerlarisSuccess) {
                  return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.okContentItemPopulerStore.items!.length,
                      itemBuilder: ((context, index) {
                        var items = state.okContentItemPopulerStore.items;
                        return Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                margin: const EdgeInsets.only(left: 6),
                                child: ListViewStorePage(
                                    imageUrl:
                                        items![index].imageUrl!.toString(),
                                    name: items[index].name!.toString(),
                                    price: items[index].price!.toString(),
                                    discon: items[index].discon!.toString(),
                                    discPrice:
                                        items[index].discPrice!.toString())),
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
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Terbaru",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: const Color(0xff3F3F3F),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  child: Text(
                    "Lihat Semua",
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: const Color(0xff63767E),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 210,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: BlocBuilder<TerbaruBloc, TerbaruState>(
              builder: (context, state) {
                if (state is TerbaruSuccess) {
                  return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.okContentItemTerbaruStore.items!.length,
                      itemBuilder: ((context, index) {
                        var items = state.okContentItemTerbaruStore.items;
                        return Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                margin: const EdgeInsets.only(left: 6),
                                child: ListViewStorePage(
                                    imageUrl: items![index].imageUrl!,
                                    name: items[index].name!,
                                    price: items[index].price!,
                                    discon: items[index].discon!,
                                    discPrice: items[index].discPrice!)),
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
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Semua Produk",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3F3F3F)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 6, 0, 6),
                  height: 26,
                  width: 79,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                    border:
                        Border.all(color: const Color(0xffC4C4C4), width: 1),
                  ),
                  child: Row(children: [
                    Image.asset("assets/icons/icon_filter.png"),
                    const SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Filter",
                      style: GoogleFonts.roboto(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4D4D4D)),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 9,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 6),
                  height: 26,
                  width: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                    border:
                        Border.all(color: const Color(0xffC4C4C4), width: 1),
                  ),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        "Urutkan",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4D4D4D)),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Center(child: Icon(Icons.expand_more)),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 20),
            height: MediaQuery.of(context).size.height * 0.8,
            child: BlocBuilder<AllitemBloc, AllitemState>(
              builder: (context, state) {
                if (state is AllItemSuccess) {
                  return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent:
                            MediaQuery.of(context).size.width * 0.52,
                        mainAxisExtent:
                            MediaQuery.of(context).size.height * 0.39,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                      ),
                      itemCount: state.okContentAllProduct.items!.length,
                      itemBuilder: ((context, index) {
                        var items = state.okContentAllProduct.items;
                        return Row(
                          children: [
                            ListViewSemuaProduk(
                              imageUrl: items![index].imageUrl!.toString(),
                              name: items[index].name!.toString(),
                              price: items[index].price!.toString(),
                              storeName: items[index].storeName!.toString(),
                              rating: items[index].rating!.toString(),
                              views: items[index].views!.toString(),
                              sold: items[index].sold!.toString(),
                              press: () {},
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
        ],
      );
  //end of Widget Product

  //AppBar Content
  Widget Content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFBA1E),
                      image: DecorationImage(
                        scale: 0.7,
                        image: AssetImage('assets/icons/icon_small_store.png'),
                      )),
                ),
                SizedBox(
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
                            fontSize: 13, color: const Color(0xff63767E)),
                      )
                    ],
                  ),
                ),
                SizedBox(
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
                            fontSize: 13, color: const Color(0xff63767E)),
                      )
                    ],
                  ),
                ),
                SizedBox(
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
                            fontSize: 13, color: const Color(0xff63767E)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.storeName,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff393C43),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Sport Fashion",
                  style: GoogleFonts.poppins(
                    color: Color(0xff63767E),
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      border:
                          Border.all(color: const Color(0xffD9D9D9), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Mengikuti",
                          style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: const Color(0xff63767E),
                              fontWeight: FontWeight.w500),
                        ),
                        const Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      border:
                          Border.all(color: const Color(0xffD9D9D9), width: 1),
                    ),
                    child: Center(
                      child: Text(
                        "Pesan",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: const Color(0xff63767E),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF),
                      border:
                          Border.all(color: const Color(0xffD9D9D9), width: 1),
                    ),
                    child: Center(
                      child: Text(
                        "Lihat Lokasi ",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: const Color(0xff63767E),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffFFFFFF),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/icon_image.png"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
        ],
      );

  //End Of WidgetContent

  //Widget Kategori
  Widget Kategori() => InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProdukStorePage()));
        },
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Semua Kategori",
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3F3F3F)),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state is CategorySuccess) {
                  return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.95,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              state.okContentCategoryStore!.items!.length,
                          itemBuilder: ((context, index) {
                            var items = state.okContentCategoryStore!.items;
                            return ListViewKategori(
                                imageUrl: items![index].imageUrl.toString(),
                                title: items[index].title.toString(),
                                jumlah: items[index].jumlah.toString());
                          })));
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ]),
        ),
      );

//  ListView.builder(
  //     physics: const NeverScrollableScrollPhysics(),
  //     itemCount: kategoriStoreModel.length,
  //     itemBuilder: ((context, index) {
  //       return ListViewKategori(
  //           categoryStoreModel: kategoriStoreModel[index]);
  //     })),

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: false,
                leadingWidth: 40,
                centerTitle: false,
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  padding: const EdgeInsets.only(left: 20.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                ),
                expandedHeight: 400.0,
                flexibleSpace: Container(
                  padding: const EdgeInsets.only(top: 60),
                  child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Content(),
                  ),
                ),
                title: SizedBox(
                  height: 40,
                  width: ScreenWidth,
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: const Color(0xffF0F3F8),
                      hintText: "cari barang atau toko",
                      hintStyle: const TextStyle(
                          fontSize: 13, color: Color(0xff7C7C7C)),
                      prefixIcon: Container(
                        padding: const EdgeInsets.fromLTRB(10, 11, 6, 16),
                        child: const Icon(
                          Icons.search,
                          color: Color(0xff7C7C7C),
                          size: 20,
                        ),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(maxWidth: 100),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(26, 8, 26, 14),
                    ),
                  ),
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
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        // ignore: prefer_const_constructors
                        Tab(
                          text: "Produk",
                        ),
                        const Tab(text: "Kategori"),
                        const Tab(text: "Promo"),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: <Widget>[
                SingleChildScrollView(child: Produk()),
                SingleChildScrollView(child: Kategori()),
                const Center(child: Text("Promo")),
              ]),
        ),
      ),
    );
  }
}
