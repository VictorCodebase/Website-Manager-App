import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

import '../utilities/large_tile.dart';
import 'WebsiteManagementUtilities/manager_constants.dart';
import 'WebsiteManagementUtilities/page_contents.dart';

var tabletManagerLayout = Row(
  children: [
    managerNavPages,
    websiteHomePage,
  ],
);
