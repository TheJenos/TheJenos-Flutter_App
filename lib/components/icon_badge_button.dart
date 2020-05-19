import 'package:TheJenos/utils/static_values.dart';
import 'package:flutter/material.dart';

class IconBadgeButton extends StatelessWidget {

  final Widget child;
  final int count;

  IconBadgeButton({Key key, this.child, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        minWidth: 0.0,
        padding: const EdgeInsets.all(4.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(width: 0)),
        color: Colors.white,
        child: new Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: child,
            ),
            new Positioned(
              right: 0,
              child: new Container(
                padding: EdgeInsets.all(1),
                decoration: new BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: new Text(
                  '$count',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

