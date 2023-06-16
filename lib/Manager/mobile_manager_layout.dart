import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Manager/WebstieManagement/manager_structure.dart';
import 'package:responsive_flutter_app1/Manager/mobile_page_contents.dart';

import '../utilities/large_tile.dart';
import 'WebsiteManagementUtilities/manager_constants.dart';

var mobileManagerLayout = Column(
  children: [
    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageContentsMobile(),
                ),
              );
            },
            child: const EditPageBanner(pageName: "Sample Name",),
          );
        },
      ),
    )
  ],
);
