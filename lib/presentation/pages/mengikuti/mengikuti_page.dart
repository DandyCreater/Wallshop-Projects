import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/data/bloc/mengikuti_bloc/mengikuti_bloc.dart';
import 'package:slicing_homepage/domain/models/mengikuti/mengikuti_model.dart';
import 'package:slicing_homepage/widgets/at_mengikuti/custom_barang_content.dart';

class MengikutiPage extends StatelessWidget {
  const MengikutiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Mengikuti",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color(0xff3F3F3F)),
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
      body: BlocBuilder<MengikutiBloc, MengikutiState>(
        builder: (context, state) {
          if (state is MengikutiSuccess) {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: state.mengikuti.item!.length,
                itemBuilder: (context, index) {
                  var items = state.mengikuti.item;
                  return Column(
                    children: [
                      CustomBarangContent(
                          namaToko: items![index].namaToko!.toString(),
                          kondisiProduk: items[index].kondisiProduk!.toString(),
                          imageUrlToko: items[index].imageUrlToko!.toString(),
                          imageUrl: items[index].imageUrl!.toString(),
                          komentar: items[index].komentar!.toString(),
                          likes: items[index].likes!.toString(),
                          waktu: items[index].waktu!.toString(),
                          deskripsi: items[index].deskripsi!.toString())
                    ],
                  );
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
