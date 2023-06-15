import 'package:flutter/material.dart';

import '../../constants.dart';

class OpenSurvey extends StatelessWidget {
  final String title;
  final String date;
  final int turnout;

  OpenSurvey({required this.title, required this.date, required this.turnout});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey[400],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: "Book Antiqua",
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text('$turnout People responded'),
        ],
      ),
    );
  }
}
