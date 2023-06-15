import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Manager/WebsiteManagementUtilities/page_contents.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';
import 'WebstieManagement/manager_structure.dart';

var desktopManagerLayout = Expanded(
  flex: 3,
  child: Row(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const EditPageBanner(pageName: "Sample Name",);
          },
        ),
      ),

      //tiles on the bottom
      websiteHomePage,
    ],
  ),
);
