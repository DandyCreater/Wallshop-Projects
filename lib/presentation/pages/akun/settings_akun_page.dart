// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    //Sized Content
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    //List Gender
    var listGender = ["Male", "Female"];

    //Date Item
    DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy MMMM, dd');
    final String formatted = formatter.format(now);

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: now,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));

      if (picked != null && picked != now) {
        setState(() {
          now = picked;
        });
      }
    }

    //Controller Content
    TextEditingController namaController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController dateController = TextEditingController();
    TextEditingController alamatController = TextEditingController();

//Nama Lengkap
    Widget Nama() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.063),
              child: Text(
                "Nama lengkap",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff3F3F3F),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenHeight * 0.01,
            ),
            Container(
              height: ScreenHeight * 0.062,
              width: double.infinity,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: Color(0xffEDEDED),
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                    isCollapsed: false,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(27, 11, 0, 11),
                    isDense: true,
                    filled: true,
                    hintText: "Nama Lengkap",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        ))),
              ),
            ),
          ],
        );
    //end of Widget Nama

    //Email Widget
    Widget Email() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.063),
              child: Text(
                "Email",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff3F3F3F),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenHeight * 0.01,
            ),
            Container(
              height: ScreenHeight * 0.062,
              width: double.infinity,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: const Color(0xffEDEDED),
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 16,
                      width: 20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/icons/icon_email.png"))),
                    ),
                    isCollapsed: false,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(27, 11, 0, 11),
                    isDense: true,
                    filled: true,
                    hintText: "Email",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        ))),
              ),
            ),
          ],
        );
    //end of Widget email

    //Widget Tanggal Lahir
    Widget tanggalLahir() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.063),
              child: Text(
                "Tanggal Lahir",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff3F3F3F),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenHeight * 0.01,
            ),
            GestureDetector(
              onTap: () {
                _selectDate(context);
                setState(() {});
              },
              child: Container(
                height: ScreenHeight * 0.062,
                width: double.infinity,
                decoration: BoxDecoration(
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 0,
                      color: Color(0xffEDEDED),
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: AbsorbPointer(
                  child: TextFormField(
                    readOnly: true,
                    controller: dateController,
                    decoration: InputDecoration(
                        suffixIcon: Container(
                          height: 16,
                          width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/icon_calendar.png"))),
                        ),
                        isCollapsed: false,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.fromLTRB(27, 11, 0, 11),
                        isDense: true,
                        filled: true,
                        hintText: "Tanggal Lahir",
                        hintStyle: GoogleFonts.poppins(fontSize: 14),
                        labelText: formatted.toString(),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 16),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffF3F6FC),
                              width: 1,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffF3F6FC),
                              width: 1,
                            ))),
                  ),
                ),
              ),
            ),
          ],
        );
    //end of tanggal lahir

    //Gender Widget
    Widget Gender() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.063),
              child: Text(
                "Gender",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xff3F3F3F),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenHeight * 0.01,
            ),
            Container(
              height: ScreenHeight * 0.062,
              width: double.infinity,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: Color(0xffEDEDED),
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButtonFormField(
                iconSize: 0.0,
                onChanged: (newvalue) {
                  setState(() => listGender);
                },
                items: listGender.map((String listGender) {
                  // ignore: unnecessary_new
                  return new DropdownMenuItem(
                      value: listGender, child: Text(listGender));
                }).toList(),
                decoration: InputDecoration(
                    suffixIcon: SizedBox(
                      height: 16,
                      width: 20,
                      child: Icon(
                        Icons.expand_more,
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'Male',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                    isDense: false,
                    contentPadding: EdgeInsets.fromLTRB(27, 11, 0, 11),
                    isCollapsed: true,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        ))),
              ),
            ),
          ],
        );
    //end of Gender Widget

    //Widget Alamat
    Widget Alamat() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: ScreenWidth * 0.063),
              child: Text(
                "Alamat Pengiriman",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xff3F3F3F),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenHeight * 0.01,
            ),
            Container(
              height: ScreenHeight * 0.062,
              width: double.infinity,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: Color(0xffEDEDED),
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: alamatController,
                decoration: InputDecoration(
                    isCollapsed: false,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(27, 11, 0, 11),
                    isDense: true,
                    filled: true,
                    hintText: "Alamat Pengiriman",
                    hintStyle: GoogleFonts.poppins(fontSize: 14),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xffF3F6FC),
                          width: 1,
                        ))),
              ),
            ),
          ],
        );
    //End Of Widget Alamat

    //Widget SelesaiButton
    Widget selesaiButton() => SizedBox(
          height: ScreenHeight * 0.057,
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                backgroundColor: MaterialStateProperty.all(Color(0xff000000))),
            onPressed: () {},
            child: Text(
              "Selesai",
              style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        );

    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenHeight * 0.1,
                ),
                Row(
                  children: [
                    Container(
                      height: ScreenHeight * 0.1,
                      width: ScreenWidth * 0.2,
                      decoration: BoxDecoration(
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
                          SizedBox(
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
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffEBEBED),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/icons/icon_settings.png"))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenHeight * 0.03,
                ),
                Container(
                  height: ScreenHeight * 0.002,
                  width: ScreenWidth,
                  color: Color(0xffD9D9D9),
                ),
                SizedBox(
                  height: ScreenHeight * 0.03,
                ),
                Nama(),
                SizedBox(
                  height: ScreenHeight * 0.025,
                ),
                Email(),
                SizedBox(
                  height: ScreenHeight * 0.025,
                ),
                tanggalLahir(),
                SizedBox(
                  height: ScreenHeight * 0.025,
                ),
                Gender(),
                SizedBox(
                  height: ScreenHeight * 0.025,
                ),
                Alamat(),
                SizedBox(
                  height: ScreenHeight * 0.025,
                ),
                selesaiButton(),
              ],
            ),
          )),
    );
  }
}
