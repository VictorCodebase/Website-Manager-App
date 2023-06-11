import 'package:flutter/material.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';

var desktopManagerLayout = Expanded(
  flex: 3,
  child: Row(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const MyTile();
          },
        ),
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
