import 'package:flutter/material.dart';

import '../utilities/my_tile.dart';
import 'ClientMessages/client_messages.dart';

var mobileMessagesLayout = Column(
  children: [
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
                  builder: (context) => MobileClientMessages(),
                ),
              );
            },
            child: MyTile(),
          );
        },
      ),
    ),
  ],
);
