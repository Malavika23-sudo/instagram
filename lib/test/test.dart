// // import 'package:flutter/material.dart';

// // import 'package:instagram/components/news_body.dart';
// // import 'package:instagram/components/status_box.dart';
// // import 'package:instagram/main.dart';
// // import 'package:instagram/test/news_feed.dart';
// // import 'package:instagram/test/status_picker.dart';

// // class Test extends StatefulWidget {
// //   static String routeName = "/home";

// //   @override
// //   State<Test> createState() => _TestState();
// // }

// // class _TestState extends State<Test> {
// //   ScrollController? controller = ScrollController();
// //   List<Widget> StatusPickerList = [StatusPickerTest(), StatusPickerTest()];
// //   List<Widget> NewsFeedList = [newsFeedTest(), newsFeedTest(), newsFeedTest()];

// //   bool scrollValue = false;
// //   int count = 20;

// //   void initState() {
// //     controller!.addListener(() {
// //       setState(() {
// //         scrollValue = controller!.offset > 50;
// //         print(scrollValue);
// //       });
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     double ScreenWidth = MediaQuery.of(context).size.width;
// //     double Screenheigth = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Text('lnstagram',
// //               style: TextStyle(
// //                   fontFamily: 'Regular',
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 40)),
// //           actions: [
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Icon(Icons.add_circle_outline),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Icon(Icons.chat_bubble),
// //             ),
// //           ],
// //         ),
// //         body: ListView.builder(
// //           scrollDirection: Axis.vertical,
// //           shrinkWrap: true,
// //           itemBuilder: (context, i) {
// //             return Container(
// //               height: Screenheigth,
// //               child: Column(children: [
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Container(
// //                       child: Row(
// //                     children: [
// //                       StatusPickerList[i],
// //                     ],
// //                   )),
// //                 ),
// //                 NewsFeedList[i],
// //               ]),
// //             );
// //           },
// //           itemCount: StatusPickerList.length,
// //         ));
// //     //   body: ListView(
// //     //     children: [
// //     //       Padding(
// //     //         padding: const EdgeInsets.all(8.0),
// //     //         child: Container(
// //     //             child: Row(
// //     //           children: [
// //     //             StatusPicker(),
// //     //           ],
// //     //         )),
// //     //       ),
// //     //       NewsFeed(),
// //     //       NewsFeed(),
// //     //     ],
// //     //   ),
// //     // );
// //   }
// // }








// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class IntroSlides extends StatefulWidget {
//   const IntroSlides({Key? key}) : super(key: key);

//   @override
//   State<IntroSlides> createState() => _IntroSlidesState();
// }

// class _IntroSlidesState extends State<IntroSlides> {
//   int currentpage = 0;
//   // int? total = SlidesDatas.listofSlides()!.length.toInt();
//   AnimatedContainer buildDot({int? index}) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 200),
//       margin: const EdgeInsets.only(right: 5),
//       height: 6,
//       width: currentpage == index ? 20 : 10,
//       decoration: BoxDecoration(
//         // color: currentpage == index ? primarycolour : colorDotInactivecolor,
//         borderRadius: BorderRadius.circular(3),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/intro2.jpg'), fit: BoxFit.fill)),
//       child: Column(
//         children: [
//           const SizedBox(height: 20.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               const SizedBox(
//                 height: 100.0,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         currentpage = currentpage + 1;
//                       });
//                     },
//                     child: const Text('Skip'),
//                   ),
//                   const SizedBox(
//                     height: 100.0,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Expanded(
//             flex: 3,
//             child: PageView.builder(
//                 itemCount: 3,
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentpage = value;
//                     // value = currentpage;
//                   });
//                 },
//                 itemBuilder: (BuildContext context, int index1) {
//                   // SlidesData? instance = SlidesDatas.listofSlides()![index1];
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 30.0),
//                       Text(
//                         'instance.title.toString()',
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                             fontFamily: 'PTSans',
//                             // fontSize: fontsizeheadline2,
//                             fontWeight: FontWeight.bold,
                             
                            
//                             ),
//                       ),
//                       const SizedBox(height: 30.0),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                         child: Text(
//                          ' instance.des.toString()',
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                               // fontSize: bodytext1,
//                               fontFamily: 'PTSans',
//                               // color: descolor
//                               ),
//                         ),
//                       ),
//                       const SizedBox(height: 55.0),
//                       // index1 == (total! - 1)
//                       //     ? Container(
//                       //         width: 250.0,
//                       //         decoration: BoxDecoration(
//                       //             color: Colors.white,
//                       //             borderRadius: BorderRadius.circular(40.0)),
//                       //         child: MaterialButton(
//                       //           onPressed: () {
//                       //             Navigator.push(
//                       //               context,
//                       //               MaterialPageRoute(
//                       //                   builder: (context) => LoginScreen()),
//                       //             );
//                       //           },
//                       //           child: Center(
//                       //               child: Text('Get Started',
//                       //                   style: StartButtonTextStyle2)),
//                       //         ),
//                       //       )
//                       //     : Container(),
//                     ],
//                   );
//                 }),
//           ),
//           Expanded(
//             flex: 1,
//             child: Row(
//               children: [
//                 const SizedBox(width: 25.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     2,
//                     (index) => buildDot(index: index),
//                   ),
//                 ),
//                 const SizedBox(width: 170.0),
//                 currentpage == 2
//                     ? Container(
//                         width: 110.0,
//                         height: 40.0,
//                         decoration: BoxDecoration(
//                             // color: descolor,
//                             borderRadius: BorderRadius.circular(100.0)),
//                         child: MaterialButton(
//                           onPressed: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //       builder: (context) => const LoginScreen()),
//                             // );
//                           },
//                           child: const Center(
//                               // child: Text('Get Started', style: test)),
//                         ),
//                       )
//                     : Container(),
//               ],
//             ),
//           ),
//         ],
//       ),
//       //),
//     ));
//   }
// }
