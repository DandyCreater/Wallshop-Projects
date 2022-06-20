import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_homepage/pages/akun/akun_page.dart';
import 'package:slicing_homepage/pages/explore/explore_page.dart';
import 'package:slicing_homepage/pages/mengikuti/mengikuti_page.dart';
import 'package:slicing_homepage/pages/notifikasi/notifikasi_page.dart';

import 'home/homepage.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _currentIndex = 0;

  var pages = [
    HomePage(),
    ExplorePage(),
    MengikutiPage(),
    NotifikasiPage(),
    AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Colors.black,
        onTap: (value) => setState(() => _currentIndex = value),
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              height: 20,
              width: 20,
              child: SvgPicture.asset("assets/icons/icon_active_home.svg"),
            ),
            icon: Container(
              height: 20,
              width: 20,
              child: SvgPicture.asset("assets/icons/icon_home.svg"),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/icon_active_explore.svg"),
              ),
              icon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/icon_search_normal.svg"),
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/icon_active_follow.svg"),
              ),
              icon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/icon_follow.svg"),
              ),
              label: 'Mengikuti'),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                    "assets/icons/icon_active_notification.svg"),
              ),
              icon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/icon_notification.svg"),
              ),
              label: 'Notifikasi'),
          BottomNavigationBarItem(
              icon: Container(
                height: 20,
                width: 20,
                child: FittedBox(
                  child: Image.asset(
                    'assets/images/user_profile.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              label: "Akun"),
        ],
      ),
    );
  }
}
