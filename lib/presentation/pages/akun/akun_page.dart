import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/data/bloc/akun_bloc/menu/menu_bloc.dart';
import 'package:slicing_homepage/domain/models/menu/akun_menu_model.dart';

import 'package:slicing_homepage/presentation/pages/akun/settings_akun_page.dart';
import 'package:slicing_homepage/widgets/at_akun_page/listview_menu_akun.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({Key? key}) : super(key: key);

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
          "Profile",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff3F3F3F)),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(left: ScreenWidth * 0.05, top: 20),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: ScreenHeight * 0.1,
                    width: ScreenWidth * 0.2,
                    decoration: const BoxDecoration(
                        color: Color(0xffFABC37),
                        image: DecorationImage(
                            image: AssetImage("assets/images/baesuzy.png"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.03,
                  ),
                  SizedBox(
                    width: ScreenWidth * 0.54,
                    height: ScreenHeight * 0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bae Suzy",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3F3F3F)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "baesuzy@gmail.com",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff63767E)),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()));
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xffEBEBED),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/icons/icon_settings.png"))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenHeight * 0.05,
              ),
              BlocBuilder<MenuBloc, MenuState>(
                builder: (context, state) {
                  if (state is MenuSuccess) {
                    return SizedBox(
                      height: ScreenHeight * 0.65,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.okContentMenu!.items!.length,
                          itemBuilder: ((context, index) {
                            var item = state.okContentMenu!.items;
                            return ListViewMenuAkun(
                                imageUrl: item![index].imageUrl.toString(),
                                title: item[index].title.toString());
                          })),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
