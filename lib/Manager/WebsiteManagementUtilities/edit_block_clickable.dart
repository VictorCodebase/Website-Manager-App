import 'package:flutter/material.dart';
//this class depends heavily on a multidimensional list created from the database. [row=contentType][col=content]

class EditBlock extends StatelessWidget {
  final String content;
  final String contentType;
  const EditBlock(
      {super.key, required this.content, required this.contentType});

  @override
  Widget build(BuildContext context) {
    final bool isImage = contentType.toLowerCase() != "text" ? true : false;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 190,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (isImage) ...[
              Image.asset(
                content,
                fit: BoxFit.cover,
              )
            ] else ...[
              Container(
                color: Colors.grey[400],
                child: Center(
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Edit $contentType",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
