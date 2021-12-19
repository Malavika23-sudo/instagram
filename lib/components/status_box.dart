import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/status_model.dart';

class StatusBar extends StatelessWidget {
  bool scrollValue;
  StatusBar({this.scrollValue = false});
 SatusModel satusmodel=SatusModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: scrollValue ? 0 : 110,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: textColor, width: .1))),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: textColor,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                        'assets/images/${satusmodel.statusList[i]["image"]}.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('${satusmodel.statusList[i]["user"]}'),
                )
              ],
            ),
          );
        },
        itemCount: satusmodel.statusList.length,
      ),
    );
  }
}
