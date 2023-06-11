//The box container utility
import 'package:flutter/material.dart';

class LargeTile extends StatelessWidget {
  const LargeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[400],
        height: 190,
      ),
    );
  }
}
