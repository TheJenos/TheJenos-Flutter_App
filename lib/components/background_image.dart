import 'dart:async';
import 'dart:math';

import 'package:TheJenos/utils/static_values.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BackgroudImage extends StatefulWidget {
  BackgroudImage({Key key}) : super(key: key);

  @override
  _BackgroudImageState createState() => _BackgroudImageState();
}

class _BackgroudImageState extends State<BackgroudImage> {
  CachedNetworkImage _image;
  List _imageWidgetArray = [];
  List _imageArray = [
    "https://wallpapercave.com/wp/wp1912715.png",
    "https://wallpapercave.com/wp/wp1912766.jpg",
    "https://wallpapercave.com/wp/wp1912740.jpg",
    "https://wallpapercave.com/wp/wp1912737.jpg",
    "https://wallpapercave.com/wp/wp1912735.jpg",
  ];

  Random _random = Random();

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < _imageArray.length; i++) {
      _imageWidgetArray.add(CachedNetworkImage(
        imageUrl: _imageArray[i],
        key: ValueKey(i),
        fit: BoxFit.fitHeight,
        height: 502,
      ));
    }

    int imageNumber = _random.nextInt(_imageWidgetArray.length);
    _image = _imageWidgetArray[imageNumber];
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (this.mounted) {
        setState(() {
          int imageNumber = _random.nextInt(_imageArray.length);
          _image = _imageWidgetArray[imageNumber];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: _image,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      primaryDarkColor.withOpacity(0.8),
                      primaryDarkColor,
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
