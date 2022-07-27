import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/domain/models/homepage/promo_homepage/promo_model.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewMainCarousel extends StatelessWidget {
  final OKContentPromo source;

  PageViewMainCarousel({Key? key, required this.source}) : super(key: key);

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
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                category.toString(),
                // category.imageUrl.toString(),
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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: source.items!.length,
            itemBuilder: (context, index) {
              final category = source.items![index].imageUrl.toString();
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
            count: source.items!.length,
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
