//here I have code that I need across screens

import 'package:flutter/material.dart';


import 'package:responsive_flutter_app1/Messages/mobile_messages_layout.dart';

//imports from tiles
import 'package:responsive_flutter_app1/utilities/my_tile.dart';

//imports from layouts
import 'Manager/desktop_manager_layout.dart';
import 'Manager/mobile_manager_layout.dart';
import 'Manager/tablet_manager_layout.dart';
import 'Messages/desktop_messages_layout.dart';
import 'Messages/large_desktop_messages_layout.dart';
import 'Messages/tablet_messages_layout.dart';
import 'Survey/desktop_survey_layout.dart';
import 'Survey/mobile_survey_layout.dart';
import 'Survey/tablet_survey_layout.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var defaultBackground = Colors.grey[300];
var defaultSpecial = Colors.grey[900];
var discoverLayout = Container(color: Colors.black38,);
// navigation bar

List<Widget> mobileWidgets = [mobileManagerLayout ,mobileMessagesLayout,mobileSurveyLayout,discoverLayout];
List<Widget> tabletWidgets = [tabletManagerLayout ,tabletMessagesLayout,tabletSurveyLayout,discoverLayout];
List<Widget> desktopWidgets = [desktopManagerLayout ,desktopMessagesLayout,desktopSurveyLayout,discoverLayout];
List<Widget> largeDesktopWidgets = [desktopManagerLayout ,largeDesktopMessagesLayout,desktopSurveyLayout,discoverLayout];


var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(child: Icon(Icons.ac_unit)),
      ListTile(
        leading: Icon(Icons.add_chart),
        title: Text("M A N A G E R"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("C H A T"),
      ),
      ListTile(
        leading: Icon(Icons.bar_chart),
        title: Text("S U R V E Y"),
      ),
      ListTile(
        leading: Icon(Icons.monitor_heart),
        title: Text("D I S C O V E R"),
      ),
    ],
  ),
);




