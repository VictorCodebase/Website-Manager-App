//The box container utility
import 'package:flutter/material.dart';

class OpenClientMessage extends StatelessWidget {
  //Continue add constructor
  final String name;
  final bool newMessage;
  final String snippet;
  final sampleMessageCount = 12;
  final sampleSendTime = '12-03-2012';

  OpenClientMessage(
      {required this.name, required this.newMessage, required this.snippet});

  @override
  Widget build(BuildContext context) {
    final clientNameSize = newMessage ? FontWeight.bold : FontWeight.normal;
    final newMessages =
        newMessage ? ' - $sampleMessageCount new messages.' : '';

    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey[400],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$name $newMessages',
            style: TextStyle(
              fontWeight: clientNameSize,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(snippet),
          const SizedBox(height: 4.0),
          Text(
            sampleSendTime,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
