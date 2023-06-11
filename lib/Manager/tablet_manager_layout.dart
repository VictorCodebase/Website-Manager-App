import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_tile.dart';

var tabletManagerLayout = Row(
  children: [
    managerNavPages,
    Expanded(
      flex: 2,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return LargeTile();
        },
      ),
    )
  ],
);
