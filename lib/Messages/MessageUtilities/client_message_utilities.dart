import 'package:flutter/material.dart';

class ClientMessageBox extends StatefulWidget {
  String clientName;
  String clientMessage;
  String timeStamp;
  ClientMessageBox(
      {required this.clientName,
      required this.clientMessage,
      required this.timeStamp});

  @override
  State<ClientMessageBox> createState() => _ClientMessageBoxState();
}

class _ClientMessageBoxState extends State<ClientMessageBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(

        )
      ],
    );
  }
}


class MessageBubble extends StatelessWidget {
  //String clientName;
  //String clientMessage;
  //String timeStamp;
  final String message;
  final bool isMe;
  final Key key;

  MessageBubble({required this.message, required this.isMe, required this.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            color: isMe ? Colors.blue[300] : Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: isMe ? Radius.circular(12) : Radius.zero,
              bottomRight: isMe ? Radius.zero : Radius.circular(12),
            ),
          ),
          child: Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

