import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/tik_tok_icons_icons.dart';

class ActionsToolBar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareActionSize = 25.0;
  static const double ProfileInageSize = 50.0;
  static const double PlusIconSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          _getFollowAction(),
          _getSocialAction(title: '32m', iconData: TikTokIcons.heart),
          _getSocialAction(title: '16.4k', iconData: TikTokIcons.chat_bubble),
          _getSocialAction(
              title: 'Share', iconData: TikTokIcons.reply, isShare: true),
          _getMusicAction()
        ]));
  }

  Widget _getSocialAction(
      {String? title, IconData? iconData, bool isShare = false}) {
    return Container(
        child: Container(
            width: ActionWidgetSize,
            height: ActionWidgetSize,
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Icon(iconData,
                    size: isShare ? ShareActionSize : ActionIconSize,
                    color: Colors.grey[300]),
                Padding(
                    padding: EdgeInsets.only(top: isShare ? 5.0 : 2),
                    child: Text(title!,
                        style: TextStyle(fontSize: 12.0, color: Colors.white)))
              ],
            )));
  }

  Widget _getFollowAction() {
    return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Stack(children: <Widget>[_getProfilePicture(), _getPlusIcon()]));
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileInageSize / 2),
        child: Container(
            height: ProfileInageSize,
            width: ProfileInageSize,
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(ProfileInageSize / 2)),
            child: CachedNetworkImage(
              fit: BoxFit.fitWidth,
              imageUrl:
                  "https://image.flaticon.com/icons/png/512/1783/1783356.png",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, err) => new Icon(Icons.error),
            )));
  }

  Widget _getPlusIcon() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (PlusIconSize / 2),
        bottom: 0,
        child: Container(
            width: PlusIconSize,
            height: PlusIconSize,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 20.0)));
  }

  LinearGradient get musicGradiant => LinearGradient(colors: [
        Colors.grey.shade800,
        Colors.grey.shade900,
        Colors.grey.shade900,
        Colors.grey.shade800
      ], stops: [
        0.9,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicAction() {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: <Widget>[
          Container(
            width: ProfileInageSize,
            height: ProfileInageSize,
            padding: EdgeInsets.all(11.0),
            decoration: BoxDecoration(
                gradient: musicGradiant,
                borderRadius: BorderRadius.circular(ProfileInageSize / 2)),
            child: CachedNetworkImage(
              imageUrl: "https://image.flaticon.com/icons/png/512/26/26762.png",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, err) => new Icon(Icons.error),
            ),
          )
        ],
      ),
    );
  }
}
