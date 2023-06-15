import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';
import 'package:responsive_flutter_app1/utilities/my_box.dart';
import 'package:responsive_flutter_app1/utilities/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  int _selectedIndex = 1;

  @override


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            const DrawerHeader(child: Icon(Icons.ac_unit)),
            ListTile(
              leading: const Icon(Icons.add_chart),
              title: const Text("M A N A G E R"),
              onTap: () {
                setState(() {
                  _selectedIndex = 0; // Update the selected index
                });

              },
              tileColor: _selectedIndex == 0 ? Colors.grey[900] : null,
              textColor: _selectedIndex == 0
                  ? Colors.grey[300]
                  : null,
              iconColor: _selectedIndex == 0
                  ? Colors.grey[300]
                  : null,
              // Set the color based on the selected index
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text("C H A T"),
              onTap: () {
                setState(() {
                  _selectedIndex = 1; // Update the selected index
                });
              },
              tileColor: _selectedIndex == 1 ? Colors.grey[900] : null,
              textColor: _selectedIndex == 1
                  ? Colors.grey[300]
                  : null,
              iconColor: _selectedIndex == 1
                  ? Colors.grey[300]
                  : null,// Set the color based on the selected index
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text("S U R V E Y"),
              onTap: () {
                setState(() {
                  _selectedIndex = 2; // Update the selected index
                });
              },
              tileColor: _selectedIndex == 2 ? Colors.grey[900] : null,
              textColor: _selectedIndex == 2
                  ? Colors.grey[300]
                  : null,
              iconColor: _selectedIndex == 2
                  ? Colors.grey[300]
                  : null,// Set the color based on the selected index
            ),
            ListTile(
              leading: const Icon(Icons.monitor_heart),
              title: const Text("T O  Y O U"),
              onTap: () {
                setState(() {
                  _selectedIndex = 3; // Update the selected index
                });
              },
              tileColor: _selectedIndex == 3 ? Colors.grey[900] : null,
              textColor: _selectedIndex == 3
                  ? Colors.grey[300]
                  : null,
              iconColor: _selectedIndex == 3
                  ? Colors.grey[300]
                  : null,// Set the color based on the selected index
            ),
          ],
        ),
      ),
      backgroundColor: defaultBackground,
      body: mobileWidgets[_selectedIndex],
    );
  }
}
