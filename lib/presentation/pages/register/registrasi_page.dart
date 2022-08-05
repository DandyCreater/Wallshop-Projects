// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/presentation/resources/routes_manager.dart';
import 'package:slicing_homepage/widgets/at_login_page/custom_sosmed_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obsecure = true;
  bool obsecureConfirm = true;

  _obsecureText() {
    obsecure = !obsecure;
    setState(() {});
  }

  _obsecureConfirmText() {
    obsecureConfirm = !obsecureConfirm;
    setState(() {});
  }

  void _successDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent.withOpacity(0.2),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 125),
                child: CircularProgressIndicator()),
          );
        });
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamedAndRemoveUntil(
        context, Routes.masterRoute, (route) => false);
  }

  _showAlertDialog(BuildContext context, String message) {
    Widget acceptButton = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        "OK",
        style: GoogleFonts.urbanist(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text(
          "Register Gagal",
          style: GoogleFonts.urbanist(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      content: Text(
        message,
        style: GoogleFonts.urbanist(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        acceptButton,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  _buttonFunction() {
    if (emailController.text.isEmpty &&
        usernameController.text.isEmpty &&
        passwordController.text.isEmpty &&
        confirmPasswordController.text.isEmpty) {
      _showAlertDialog(context, "Semua Field Harus di isi");
    } else if (passwordController.text.length < 8 ||
        passwordController.text.isEmpty && usernameController.text.length < 8 ||
        usernameController.text.isEmpty && emailController.text.length < 15 ||
        emailController.text.isEmpty &&
            confirmPasswordController.text != passwordController.text ||
        confirmPasswordController.text.isEmpty) {
      _showAlertDialog(context,
          "Password dan Username minimal harus 8 karakter, Format Email Salah ");
      setState(() {
        usernameController.text = "";
        emailController.text = "";
        confirmPasswordController.text = "";
        passwordController.text = "";
      });
    } else {
      _successDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.04),
                  height: screenHeight * 0.28,
                  width: screenWidth * 0.6,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/register_logo.png"),
                    scale: 1,
                    // fit: BoxFit.cover
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: screenHeight * 0.05,
                width: screenWidth * 0.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: const Color(0xffE8ECF4), width: 2),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 6),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffE16330),
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffEEEEEE),
                        filled: true,
                        isDense: true,
                        isCollapsed: true,
                        hintText: "Username",
                        hintStyle: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8391A1)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 14, 8, 14),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffEEEEEE),
                        filled: true,
                        isDense: true,
                        isCollapsed: true,
                        hintText: "Email",
                        hintStyle: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8391A1)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 14, 8, 14),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: obsecure,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _obsecureText();
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              "assets/icons/obsecure_icon.svg",
                              height: screenHeight * 0.02,
                              width: screenWidth * 0.02,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        fillColor: const Color(0xffEEEEEE),
                        filled: true,
                        isDense: true,
                        isCollapsed: true,
                        hintText: "Password",
                        hintStyle: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8391A1)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 14, 8, 10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    TextField(
                      controller: confirmPasswordController,
                      obscureText: obsecure,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _obsecureConfirmText();
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              "assets/icons/obsecure_icon.svg",
                              height: screenHeight * 0.02,
                              width: screenWidth * 0.02,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        fillColor: const Color(0xffEEEEEE),
                        filled: true,
                        isDense: true,
                        isCollapsed: true,
                        hintText: "Confirm password",
                        hintStyle: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8391A1)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 14, 8, 10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffEEEEEE))),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    SizedBox(
                        height: screenHeight * 0.07,
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffBC1533))),
                          onPressed: () {
                            _buttonFunction();
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.urbanist(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        CustomSosmedButton(
                          imageUrl: "assets/icons/icon_facebook.svg",
                        ),
                        CustomSosmedButton(
                          imageUrl: "assets/icons/icon_apple.svg",
                        ),
                        CustomSosmedButton(
                          imageUrl: "assets/icons/icon_google.svg",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Center(
                        child: RichText(
                            text: TextSpan(
                                text: "Have any account?",
                                style: GoogleFonts.urbanist(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                children: [
                          TextSpan(
                              text: ' Login Here',
                              style: GoogleFonts.urbanist(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(
                                      context, Routes.loginScreenRoute);
                                })
                        ])))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
