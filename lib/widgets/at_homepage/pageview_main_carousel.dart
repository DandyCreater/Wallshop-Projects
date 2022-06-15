import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/models/category_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewMainCarousel extends StatelessWidget {
  PageViewMainCarousel({Key? key}) : super(key: key);

  final pageController = PageController(viewportFraction: .9);

  Widget _buildCategories(BuildContext context, category) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        right: MediaQuery.of(context).size.width * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade200,
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                category.imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          child: PageView.builder(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return _buildCategories(context, category);
            },
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.06,
          ),
          child: SmoothPageIndicator(
            controller: pageController,
            count: categories.length,
            effect: SlideEffect(
              dotWidth: 10.0,
              dotHeight: 10.0,
              dotColor: Colors.grey,
              activeDotColor: Colors.red.shade900,
              radius: 20.0,
              spacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}
