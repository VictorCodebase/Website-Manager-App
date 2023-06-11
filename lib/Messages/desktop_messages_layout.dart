import 'package:flutter/material.dart';

import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';
import 'ClientMessages/client_messages.dart';

var desktopMessagesLayout = Expanded(
  child: Column(
    children: [
      //4 boxes on the top
      AspectRatio(
        aspectRatio: 4,
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return const MyBox();
            },
          ),
        ),
      ),

      //tiles on the bottom
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(onTap: () {
              //Navigate to next page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MobileClientMessages()),
              );
            },
            child: MyTile(),
            );
          },
        ),
      )
    ],
  ),
);
