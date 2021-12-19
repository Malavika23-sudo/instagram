import 'package:flutter/material.dart';

import 'package:instagram/components/news_body.dart';
import 'package:instagram/components/status_box.dart';
import 'package:instagram/main.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? controller = ScrollController();
  bool scrollValue = false;
  int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void initState() {
    controller!.addListener(() {
      setState(() {
        scrollValue = controller!.offset > 50;
        print(scrollValue);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: theameColor,
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.video_collection,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                )),
            const BottomNavigationBarItem(
              label: 'Cart',
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/saniya.jpg'),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: textColor,
          unselectedItemColor: iconColorInactive,
          onTap: _onItemTapped,
        ),
      ),
      appBar: AppBar(
        title: Text('lnstagram',
            style: TextStyle(
                fontFamily: 'Regular',
                fontWeight: FontWeight.bold,
                fontSize: 40)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_circle_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.chat_bubble),
          ),
        ],
      ),
      body: Column(
        children: [
          StatusBar(
            scrollValue: scrollValue,
          ),
          NewsFeed(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
