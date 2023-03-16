import 'package:flutter/material.dart';

class Result_Screen extends StatefulWidget {
  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('gender :'),
              Text('Male'),
            ],
          ),
          Row(
            children: [
              Text('age :'),
              Text('20'),
            ],
          ),
          Row(
            children: [
              Text('height :'),
              Text('180cm'),
            ],
          ),
        ],
      ),
    );
  }
}
