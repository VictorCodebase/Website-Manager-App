
import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/utilities/large_tile.dart';

import '../utilities/my_tile.dart';

var desktopSurveyLayout = Expanded(
  flex: 3,
  child: Column(
    children: [
      //4 boxes on the top
      Container(
        child: MyTile(),
      ),

      //tiles on the bottom
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const LargeTile();
          },
        ),
      )
    ],
  ),
);
