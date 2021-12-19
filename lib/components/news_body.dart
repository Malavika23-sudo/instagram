import 'package:flutter/material.dart';
import 'package:instagram/components/post_detail_page.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/news_feed_model.dart';

class NewsFeed extends StatelessWidget {
  ScrollController? controller = ScrollController();
  NewsFeed({this.controller});
  NewsFeedModel newsFeedModel = NewsFeedModel();
  int pageIndex = 0;
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double Screenheigth = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return Container(
            height: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                              'assets/images/${newsFeedModel.newsFeedList[i]["image"]}.jpg'),
                        ),
                      ),
                      Text('${newsFeedModel.newsFeedList[i]["user"]}',
                          style: TextStyle(
                            color: textColor,
                          )),
                      Flexible(
                          child: SizedBox(
                        width: ScreenWidth * .8,
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.menu, color: textColor),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                      onPageChanged: (value) {
                        pageIndex = value;
                      },
                      itemCount:
                          newsFeedModel.newsFeedList[i]["profile_image"].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/${newsFeedModel.newsFeedList[i]["profile_image"][index]}.jpg'))),
                        );
                      }),
                ),
                Container(
                  height: 115,
                  decoration: BoxDecoration(
                      border:
                          Border(top: BorderSide(color: textColor, width: .1))),
                  child: PostDetails(
                    ScreenWidth: ScreenWidth,
                    newsFeedModel: newsFeedModel,
                    postIndex: i,
                    pageIndex: pageIndex,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: newsFeedModel.newsFeedList.length,
      ),
    );
  }
}
