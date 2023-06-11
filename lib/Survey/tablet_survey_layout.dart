import 'package:flutter/material.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_tile.dart';

var tabletSurveyLayout = Column(
  children: [
    Container(
      child: MyTile(),
    ),

    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return LargeTile();
        },
      ),
    )
  ],
);
