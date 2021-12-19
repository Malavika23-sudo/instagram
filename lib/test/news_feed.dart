// import 'package:flutter/material.dart';
// import 'package:instagram/main.dart';

// class newsFeedTest extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double ScreenWidth = MediaQuery.of(context).size.width;
//     double Screenheigth = MediaQuery.of(context).size.height;
//     return Container(
//       height: 500,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 65,
//             width: double.infinity,
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                   child: CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage('assets/images/nakul.jpg'),
//                   ),
//                 ),
//                 Text('Nakul_Thamby',
//                     style: TextStyle(
//                       color: textColor,
//                     )),
//                 Flexible(
//                     child: SizedBox(
//                   width: ScreenWidth * .8,
//                 )),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.menu, color: textColor),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage('assets/images/nakul_feed.jpg'))),
//             ),
//           ),
//           Container(
//             height: 115,
//             decoration: BoxDecoration(
//                 border: Border(top: BorderSide(color: textColor, width: .1))),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.favorite_border,
//                         size: 30,
//                         color: textColor,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.comment_rounded,
//                         size: 30,
//                         color: textColor,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.send,
//                         size: 30,
//                         color: textColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: ScreenWidth * .4,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(1.0),
//                             child: CircleAvatar(
//                               radius: 4,
//                               backgroundColor: textColor,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(1.0),
//                             child: CircleAvatar(radius: 4),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(1.0),
//                             child: CircleAvatar(radius: 4),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.bookmark_border,
//                         size: 30,
//                         color: textColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 8.0, left: 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('100 Likes'),
//                       Text('Caption '),
//                       Text('View all 10 comments')
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


