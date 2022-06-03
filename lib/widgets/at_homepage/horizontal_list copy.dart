/// THIS FILE FOR REFERENCE ONLY, MOD FROM FIRST HORIZONTAL LIST 

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../models/category_model.dart';

// class HorizontalListCopy extends StatelessWidget {
//   HorizontalListCopy({Key? key}) : super(key: key);

//   final pageController = PageController(viewportFraction: 0.8);

//   List<CategoryModel> categories = [
//     CategoryModel(name: 'Technology', imageUrl: 'assets/images/slider1_1.png'),
//     CategoryModel(name: 'Business', imageUrl: 'assets/images/slider1_2.png'),
//     CategoryModel(name: 'Technology', imageUrl: 'assets/images/slider1_1.png'),
//     CategoryModel(name: 'Business', imageUrl: 'assets/images/slider1_2.png'),
//   ];

//   Widget _buildCategories(BuildContext context, category) {
//     return Container(
//       margin: const EdgeInsets.only(top: 10.0, right: 10.0),
//       width: 300.0,
//       height: 200.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(
//           width: 1,
//           color: Colors.grey.shade200,
//         ),
//       ),
//       child: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 200.0,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Image.asset(
//                 category.imageUrl.toString(),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 150.0,
//               // color: Colors.blue,
//               child: ListView.builder(
//                 controller: pageController,
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemCount: categories.length,
//                 itemBuilder: (context, index) {
//                   final category = categories[index];
//                   return _buildCategories(context, category);
//                 },
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             SmoothPageIndicator(
//               controller: pageController,
//               count: categories.length,
//               effect: SlideEffect(
//                 dotWidth: 10.0,
//                 dotHeight: 10.0,
//                 dotColor: Colors.grey,
//                 activeDotColor: Colors.red.shade900,
//                 radius: 20.0,
//                 spacing: 5,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
