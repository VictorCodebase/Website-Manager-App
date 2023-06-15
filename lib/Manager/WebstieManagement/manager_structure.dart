//The box container utility
import 'package:flutter/material.dart';

class EditPageBanner extends StatelessWidget {
  final String pageName;
  const EditPageBanner({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[400],
        height: 80,
        child: Center(
          child: Text(
            pageName.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
