import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          height: 70.0,
          padding: EdgeInsets.all(10),
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '@banyx',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13.0,
              color: Colors.white),
        ),
        Text('Video title and some other stuff',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13.0,
                color: Colors.white)),
        Row(children: <Widget>[
          Icon(Icons.music_note, size: 15, color: Colors.white),
          Text('Artist name - Album name - song',
              style: TextStyle(fontSize: 12.0, color: Colors.white))
        ])
      ],
    )));
  }
}
