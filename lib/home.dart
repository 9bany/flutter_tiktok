import 'package:flutter/material.dart';
import 'package:tiktok/widgets/actions_toolbar.dart';
import 'package:tiktok/widgets/bottom_toolbar.dart';
import 'package:tiktok/widgets/video_description.dart';

class Home extends StatelessWidget {
  Widget get getTopSection => Container(
        height: 80,
        alignment: Alignment(0, 1),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Following',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            Container(
              width: 15,
            ),
            Text('For you',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );

  Widget get getMiddleSection => Expanded(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(child: VideoDescription()),
          ActionsToolBar()
        ],
      ));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
            child: Container(
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    // top section
                    getTopSection,
                    // Middle section
                    getMiddleSection,
                    // bottom section
                    BottomToolbar(),
                  ],
                ))));
    // return Container(
    //
    //   child: SafeArea(
    //       child: ),
    // );
  }
}
