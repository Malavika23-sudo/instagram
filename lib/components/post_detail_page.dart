import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/news_feed_model.dart';

class PostDetails extends StatefulWidget {
  int postIndex;
  int pageIndex;
  PostDetails(
      {required this.ScreenWidth,
      required this.newsFeedModel,
      this.postIndex = 0,
      this.pageIndex = 0});

  final double ScreenWidth;
  final NewsFeedModel newsFeedModel;

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  bool tap = false;
  NewsFeedModel newsFeedModel = NewsFeedModel();

  // List<Widget> postIndicator = [];

  // Widget test() {
  //   for (var i = 0; i <= widget.postIndex; i++) {
  //     postIndicator.add(Padding(
  //       padding: const EdgeInsets.all(1.0),
  //       child: CircleAvatar(
  //         radius: 4,
  //         backgroundColor: textColor,
  //       ),
  //     ));
  //   }
  //   return Row(
  //     children: postIndicator,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tap = !tap;
                      print(widget.postIndex);
                    });
                  },
                  child: tap
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                          textDirection: TextDirection.rtl,
                          semanticLabel: 'jj',
                        )
                      : Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: textColor,
                          semanticLabel: 'jj',
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.comment_rounded,
                  size: 30,
                  color: textColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.send,
                  size: 30,
                  color: textColor,
                ),
              ),

              // SizedBox(
              //   height: 50,
              //   width: 50,
              //   child: Container(
              //     child: test(),
              //   ),
              // ),
              // SizedBox(
              //   height: 80,
              //   width: 100,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: newsFeedModel
              //           .newsFeedList[widget.postIndex]["profile_image"].length,
              //       itemBuilder: (context, x) {
              //         return Padding(
              //           padding: const EdgeInsets.all(1.0),
              //           child: CircleAvatar(
              //             radius: 4,
              //             backgroundColor: textColor,
              //           ),
              //         );
              //       }),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.bookmark_border,
                  size: 30,
                  color: textColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    '${widget.newsFeedModel.newsFeedList[widget.postIndex]["likes"]} Likes'),
                Text(
                    '${widget.newsFeedModel.newsFeedList[widget.postIndex]["caption"]}'),
                Text(
                    'View all ${widget.newsFeedModel.newsFeedList[widget.postIndex]["comments"]} comments')
              ],
            ),
          )
        ],
      ),
    );
  }
}
