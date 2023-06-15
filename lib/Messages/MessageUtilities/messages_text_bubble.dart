import 'package:flutter/material.dart';


class TextBubble extends StatelessWidget {
  final String message;
  final String sender;
  final String time;

  TextBubble({required this.message, required this.sender, required this.time});

  @override
  Widget build(BuildContext context) {
    final isUser = sender.toLowerCase() == "user";
    final bubbleColor = isUser ? Colors.grey[800] : Colors.grey[300];
    final outlineColor = isUser ? Colors.grey : Colors.white;
    final textColor = isUser ? Colors.grey[300] : Colors.grey[900];

    return Container(
      margin: EdgeInsets.only(
        left: isUser ? 108.0 : 8.0,
        right: isUser ? 8.0 : 108.0,
        top: 20,
      ),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: outlineColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            message,
            style: TextStyle(
              color: textColor,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            time,
            style: TextStyle(
              color: textColor,
              fontSize: 12.0,

            ),
          ),
        ],
      ),
    );
  }
}




