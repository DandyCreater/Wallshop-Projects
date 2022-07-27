// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:slicing_homepage/data/bloc/rank_homepage_bloc/rankPembeli/rankpembeli_bloc.dart';
import 'package:slicing_homepage/data/bloc/rank_homepage_bloc/rankToko/ranktoko_bloc.dart';
import 'package:slicing_homepage/widgets/at_homepage/rank_homepage_toko_list.dart';

class RankHomeScreen extends StatefulWidget {
  const RankHomeScreen({Key? key}) : super(key: key);

  @override
  State<RankHomeScreen> createState() => _RankHomeScreenState();
}

class _RankHomeScreenState extends State<RankHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget Toko() => BlocBuilder<RanktokoBloc, RanktokoState>(
        builder: (context, state) {
          if (state is RanktokoSuccess) {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.rankData!.item!.length,
                itemBuilder: ((context, index) {
                  var items = state.rankData!.item;
                  return Column(
                    children: [
                      RankHomepage(
                        num: items![index].num!.toString(),
                        imageUrl: items[index].imageUrl!.toString(),
                        title: items[index].title!.toString(),
                        price: items[index].price!.toString(),
                        size: 1.3,
                      ),
                    ],
                  );
                }));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );
  Widget Pembeli() => BlocBuilder<RankpembeliBloc, RankpembeliState>(
        builder: (context, state) {
          if (state is RankpembeliSuccess) {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.rankData.item!.length,
                itemBuilder: ((context, index) {
                  var items = state.rankData.item;
                  return Column(
                    children: [
                      RankHomepage(
                        num: items![index].num!.toString(),
                        imageUrl: items[index].imageUrl!.toString(),
                        title: items[index].title!.toString(),
                        price: items[index].price!.toString(),
                        size: 0.1,
                      ),
                    ],
                  );
                }));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Leaderboard Transaksi",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xff3F3F3F)),
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
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
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
                Tab(
                  text: "Toko",
                ),
                Tab(text: "Pembeli"),
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
          Pembeli(),
        ],
      ),
    );
  }
}
