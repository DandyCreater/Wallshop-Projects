// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:slicing_homepage/models/populer_model.dart';

// class ListViewItemPopuler extends StatelessWidget {
//   ListViewItemPopuler({Key? key}) : super(key: key);

//   Widget _buildPopuler(BuildContext context, populer, index) {
//     return Container(
//       margin: EdgeInsets.only(right: 10),
//       // margin: index == popularList.length - 1
//       //     ? EdgeInsets.only(right: 30.0)
//       //     : EdgeInsets.only(top: 10.0, right: 10.0),
//       width: MediaQuery.of(context).size.width * 0.225,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(
//           width: 1,
//           color: Colors.grey.shade200,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height * 0.1,
//             child: ClipRRect(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//               child: Image.asset(
//                 populer.imageUrl.toString(),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10.0),
//           Container(
//             padding:
//                 const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "${populer.title}",
//                   style: TextStyle(fontSize: 8.0),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 5.0),
//                 Text(
//                   "${populer.price}",
//                   style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10.0),
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 10.0,
//                       backgroundColor: Colors.red.shade900,
//                       child: Text(
//                         '29%',
//                         style:
//                             TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(width: 10.0),
//                     Text(
//                       '${populer.discPrice}',
//                       style: TextStyle(fontSize: 9.0),
//                     )
//                   ],
//                 ),
//               ],
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
//         Container(
//           height: MediaQuery.of(context).size.height * 0.2,
//           width: MediaQuery.of(context).size.width * 0.95,
//           child: ListView.builder(
//             physics: BouncingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//             itemCount: popularList.length,
//             itemBuilder: (context, index) {
//               final populer = popularList[index];
//               if (index == 0) {
//                 return const SizedBox(width: 0.0);
//               }

//               return _buildPopuler(context, populer, index);
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
