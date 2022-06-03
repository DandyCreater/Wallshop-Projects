import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/models/category_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewMainCarousel extends StatelessWidget {
  PageViewMainCarousel({Key? key}) : super(key: key);

  final pageController = PageController(viewportFraction: .9);

  Widget _buildCategories(BuildContext context, category) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 10.0),
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
          width: 400.0,
          height: 190.0,
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
          padding: const EdgeInsets.only(left: 40.0),
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
