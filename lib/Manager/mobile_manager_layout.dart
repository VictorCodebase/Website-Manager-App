import 'package:flutter/material.dart';

import '../utilities/large_tile.dart';

var mobileManagerLayout = Column(
  children: [
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
