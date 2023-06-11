import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/utilities/my_tile.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_box.dart';
import 'ClientMessages/client_messages.dart';

var tabletMessagesLayout = Column(
  children: [
    //4 boxes on the top
    AspectRatio(
      aspectRatio: 8,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return MyBox();
          },
        ),
      ),
    ),

    //tiles on the bottom
    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MobileClientMessages()));
            },
            child: MyTile(),
          );
        },
      ),
    )
  ],
);
