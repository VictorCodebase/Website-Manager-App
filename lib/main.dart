import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/responsive/desktop_scaffold.dart';
import 'package:responsive_flutter_app1/responsive/large_desktop_scaffold.dart';
import 'package:responsive_flutter_app1/responsive/mobile_scaffold.dart';
import 'package:responsive_flutter_app1/responsive/responsive_layout.dart';
import 'package:responsive_flutter_app1/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        desktopScaffold: const DesktopScaffold(),
        largeDesktopWidget: const LargeDesktop(),
        tabletScaffold: const TabletScaffold(),
      ),
    );
  }
}
