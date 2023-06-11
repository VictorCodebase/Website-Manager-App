import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

import '../MessageUtilities/client_message_utilities.dart';

class MobileClientMessages extends StatelessWidget {
  const MobileClientMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page when the back button is pressed
            Navigator.pop(context);
          },
        ),
        backgroundColor: defaultSpecial,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return ClientMessageBox(
                clientName: "June Cosmo",
                clientMessage:
                    "Look unto the sky, the wild expanse of brilliance through the black canvas. The deep cold expanse, so bright through the dark",
                timeStamp: '05 - 11 - 2003',
              );
            },
          ),
        )
      ]),
    );
  }
}
