import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

import '../utilities/my_box.dart';
import '../utilities/my_tile.dart';

class LargeDesktop extends StatefulWidget {
  const LargeDesktop({Key? key}) : super(key: key);

  @override
  _LargeDesktopState createState() => _LargeDesktopState();
}

class _LargeDesktopState extends State<LargeDesktop> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.grey[300],
            child: Column(
              children: [
                const DrawerHeader(child: Icon(Icons.ac_unit)),
                ListTile(
                  leading: const Icon(Icons.add_chart),
                  title: const Text("M A N A G E R"),
                  onTap: () {
                    _onItemTapped(0);
                  },
                  tileColor: _selectedIndex == 0 ? Colors.grey[900] : null,
                  textColor: _selectedIndex == 0 ? Colors.grey[300] : null,
                  iconColor: _selectedIndex == 0 ? Colors.grey[300] : null,
                ),
                ListTile(
                  leading: const Icon(Icons.chat),
                  title: const Text("C H A T"),
                  onTap: () {
                    _onItemTapped(1);
                  },
                  tileColor: _selectedIndex == 1 ? Colors.grey[900] : null,
                  textColor: _selectedIndex == 1 ? Colors.grey[300] : null,
                  iconColor: _selectedIndex == 1 ? Colors.grey[300] : null,
                ),
                ListTile(
                  leading: const Icon(Icons.bar_chart),
                  title: const Text("S U R V E Y"),
                  onTap: () {
                    _onItemTapped(2);
                  },
                  tileColor: _selectedIndex == 2 ? Colors.grey[900] : null,
                  textColor: _selectedIndex == 2 ? Colors.grey[300] : null,
                  iconColor: _selectedIndex == 2 ? Colors.grey[300] : null,
                ),
                ListTile(
                  leading: const Icon(Icons.monitor_heart),
                  title: const Text("T O  Y O U"),
                  onTap: () {
                    _onItemTapped(3);
                  },
                  tileColor: _selectedIndex == 3 ? Colors.grey[900] : null,
                  textColor: _selectedIndex == 3 ? Colors.grey[300] : null,
                  iconColor: _selectedIndex == 3 ? Colors.grey[300] : null,
                ),
              ],
            ),
          ),
          largeDesktopWidgets[_selectedIndex],
          Expanded(
            child: Column(
              children: [
                Text("Dashboard")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
