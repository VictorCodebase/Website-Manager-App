import 'package:flutter/material.dart';

import '../utilities/my_tile.dart';
import 'ClientMessages/client_messages_structure.dart';
import 'MessageUtilities/open_client_message.dart';

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
            child: OpenClientMessage(name: "Glory", newMessage: true, snippet: "this is the most recent message. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hope to see you soon...",),
          );
        },
      ),
    ),
  ],
);
