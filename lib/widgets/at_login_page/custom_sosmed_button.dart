import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSosmedButton extends StatelessWidget {
  final String imageUrl;
  const CustomSosmedButton({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.26,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xff3F3F3F))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SvgPicture.asset(
          imageUrl,
        ),
      ),
    );
  }
}
