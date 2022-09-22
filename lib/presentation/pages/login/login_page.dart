// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_homepage/data/bloc/login_bloc/login_bloc.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/presentation/resources/routes_manager.dart';
import 'package:slicing_homepage/widgets/at_login_page/custom_sosmed_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecure = true;

  _obsecureText() {
    obsecure = !obsecure;
    setState(() {});
  }

  void _successDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent.withOpacity(0.2),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
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
          "Login Gagal",
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
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      _showAlertDialog(context, "Username / Password tidak boleh kosong!");
    } else if (emailController.text.length < 15 &&
        passwordController.text.length < 8) {
      _showAlertDialog(
          context, "Email atau password tidak sesuai format ketentuan");
      setState(() {
        emailController.text = "";
        passwordController.text = "";
      });
    } else if (emailController.text != 'dandythirst22@gmail.com' &&
        passwordController.text != "Wallshop") {
      _showAlertDialog(context, "Email / Password Salah !");
      setState(() {
        emailController.text = "";
        passwordController.text = "";
      });
    } else {
      BlocProvider.of<LoginBloc>(context).add(FetchLogin(
          value: LoginParameterPost(
              email: emailController.text, password: passwordController.text)));
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
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoading) {
              const CircularProgressIndicator();
              Future.delayed(Duration(seconds: 2));
            } else if (state is LoginSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.masterRoute, (route) => false);
            } else if (state is LoginFailed) {
              _showAlertDialog(context, state.message.toString());
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffE8ECF4), width: 2),
                  ),
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
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Welcome back!\nlet's start now",
                  style: GoogleFonts.urbanist(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3F3F3F),
                      height: 1.5),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/loginlogo.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffEEEEEE),
                    filled: true,
                    isDense: true,
                    isCollapsed: true,
                    hintText: "Enter your email",
                    hintStyle: GoogleFonts.urbanist(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff8391A1)),
                    contentPadding: const EdgeInsets.fromLTRB(20, 14, 8, 14),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffEEEEEE))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffEEEEEE))),
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

                    // contentPadding: const EdgeInsets.fromLTRB(20, 10, 8, 14),
                    hintText: "Enter your password",
                    hintStyle: GoogleFonts.urbanist(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff8391A1)),
                    contentPadding: const EdgeInsets.fromLTRB(20, 14, 8, 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffEEEEEE))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffEEEEEE))),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?",
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff5874AC))),
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
                        "Login",
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
                            text: "Don't have an account?",
                            style: GoogleFonts.urbanist(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: [
                      TextSpan(
                          text: ' Register Now',
                          style: GoogleFonts.urbanist(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, Routes.registerScreenRoute);
                            })
                    ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
