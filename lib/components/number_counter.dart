import 'package:flutter/material.dart';

class NumberCounter extends StatefulWidget {
  final double count;
  final TextStyle style;

  NumberCounter({Key key, this.count, this.style}) : super(key: key);

  @override
  _NumberCounterState createState() => _NumberCounterState();
}

class _NumberCounterState extends State<NumberCounter>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;

  String current = "";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<double>(begin: 0, end: widget.count).animate(_controller)
      ..addListener(() {
        setState(() {
          current = animation.value.toStringAsFixed(0);
        });
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$current', style: widget.style),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
