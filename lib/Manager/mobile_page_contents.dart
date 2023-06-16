import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Manager/WebsiteManagementUtilities/page_contents.dart';
import 'package:responsive_flutter_app1/constants.dart';

class PageContentsMobile extends StatelessWidget {
  const PageContentsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Content"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: defaultSpecial,
      ),
      body: Column(
        children: [websiteHomePage],
      ),
    );
  }
}
