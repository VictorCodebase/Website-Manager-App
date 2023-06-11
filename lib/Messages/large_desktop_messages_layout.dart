import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Messages/ClientMessages/client_messages.dart';

import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';

var largeDesktopMessagesLayout = Expanded(
  flex: 3,
  child: Column(
    children: [
      AspectRatio(
        aspectRatio: 4,
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {
              return MyBox();
            },
          ),
        ),
      ),
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
      ),
    ],
  ),
);
