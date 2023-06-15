import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

import '../MessageUtilities/messages_text_bubble.dart';

class MobileClientMessages extends StatelessWidget {
  const MobileClientMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Client's name"),
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
              return TextBubble(
                  message: "this is a sample text message Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh venenatis cras sed felis eget velit aliquet. Dui nunc mattis enim ut tellus elementum sagittis. Risus nec feugiat in fermentum. Nibh praesent tristique magna sit amet purus gravida quis. Commodo viverra maecenas accumsan lacus vel facilisis. Morbi tempus iaculis urna id volutpat lacus laoreet non. Ipsum dolor sit amet consectetur adipiscing. Elit sed vulputate mi sit. Volutpat sed cras ornare arcu. Odio ut sem nulla pharetra diam sit. Tincidunt id aliquet risus feugiat in ante metus dictum. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Consectetur libero id faucibus nisl tincidunt eget. Vitae tortor condimentum lacinia quis. Interdum varius sit amet mattis vulputate enim. Tellus in hac habitasse platea dictumst vestibulum rhoncus.Semper viverra nam libero justo laoreet sit amet. Quisque non tellus orci ac. Auctor elit sed vulputate mi sit amet. Fringilla urna porttitor rhoncus dolor purus non enim. Cursus sit amet dictum sit amet justo donec. Nec ultrices dui sapien eget mi proin sed. Pharetra diam sit amet nisl suscipit adipiscing bibendum. Sit amet tellus cras adipiscing enim eu turpis. Arcu felis bibendum ut tristique et egestas quis ipsum suspendisse. Diam maecenas sed enim ut. Enim nunc faucibus a pellentesque sit amet. Non consectetur a erat nam at lectus urna duis convallis. Diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Rhoncus est pellentesque elit ullamcorper dignissim. Cursus turpis massa tincidunt dui. Urna cursus eget nunc scelerisque viverra.ulum rhoncus est pellentesque elit ullamcorper. Congue nisi vitae suscipit tellus mauris a diam maecenas. Fringilla ut morbi tincidunt augue interdum velit euismod. Nibh tortor id aliquet lectus proin. Vestibulum mattis ullamcorper velit sed ullamcorper morbi. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Id consectetur purus ut faucibus pulvinar elementum integer enim. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Eu nisl nunc mi ipsum faucibus vitae. Mauris cursus mattis molestie a.",
                  sender: "Glory",
                  time: "01-12-2012");
            },
          ),
        )
      ]),
    );
  }
}
