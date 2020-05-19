import 'package:TheJenos/components/background_image.dart';
import 'package:TheJenos/components/carousel.dart';
import 'package:TheJenos/components/icon_badge_button.dart';
import 'package:TheJenos/utils/static_values.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned.fill(
          child: Container(
            color: primaryDarkColor,
            child: BackgroudImage(),
          ),
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "TheJenos Bot",
                                textAlign: TextAlign.right,
                                style: headline3(context),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: IconBadgeButton(
                                    child: Icon(
                                      Icons.person,
                                      size: 32,
                                    ),
                                    count: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Most agressive paladins bot",
                            style: headline6(context),
                          ),
                        ],
                      ),
                    ),
                    Carousel(),
                    new Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),
                      decoration: new BoxDecoration(
                        color: Color(0xFF4d88ff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Current party list",
                            style: headline6(context),
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 8),
                                height: 100,
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                child: Text("Party ID : $index"),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
