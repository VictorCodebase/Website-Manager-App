import 'package:flutter/material.dart';

import '../utilities/my_tile.dart';

var mobileSurveyLayout = Column(
  children: [
    Container(
      child: MyTile(),
    ),

    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MyTile();
        },
      ),
    )
  ],
);
