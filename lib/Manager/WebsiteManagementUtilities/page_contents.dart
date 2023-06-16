import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Manager/WebsiteManagementUtilities/edit_block_clickable.dart';
import 'package:responsive_flutter_app1/Manager/WebsiteManagementUtilities/website_contents.dart';
import 'package:responsive_flutter_app1/utilities/large_tile.dart';

var itemCounter = 0;
var websiteHomePage = Expanded(
  child: ListView.builder(
    itemCount: (homePageContents.length),
    itemBuilder: (context, index) {
      itemCounter = index % page_to_display.length;//Somehow modulo is keeping it from overflowing
      return EditBlock(
        contentType: page_to_display[itemCounter][0],
        content: page_to_display[itemCounter][1],
      );
    },
  ),
);
