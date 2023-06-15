import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Messages/ClientMessages/client_messages_structure.dart';

import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';
import 'MessageUtilities/open_client_message.dart';

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
              child: OpenClientMessage(name: "Glory", newMessage: true, snippet: "this is the most recent message. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hope to see you soon...",),
            );
          },
        ),
      ),
    ],
  ),
);
