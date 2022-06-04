import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:slicing_homepage/models/store_model.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_dropdown.dart';
import 'package:slicing_homepage/widgets/at_explore/shop_three_products.dart';

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
    Widget _createTab(String text) {
      return Tab(
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black))),
          child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Center(child: Text(text))),
              ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
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
              // contentPadding: const EdgeInsets.all(20),
              contentPadding: EdgeInsets.fromLTRB(26, 8, 26, 14),
            ),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {},
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
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CustomDropDown(title: 'Kategori'),
                  const SizedBox(width: 10.0),
                  CustomDropDown(title: 'Lokasi'),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.only(bottom: 0),
                          onPressed: () {},
                          icon: Icon(Icons.tune),
                        ),
                        Text(
                          "Urutkan",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              // list of store
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
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
