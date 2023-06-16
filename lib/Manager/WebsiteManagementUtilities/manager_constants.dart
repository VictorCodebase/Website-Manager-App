import 'package:flutter/material.dart';

import '../WebstieManagement/manager_structure.dart';

var managerNavPages = Expanded(
  child: ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return const EditPageBanner(pageName: "Sample Name",);
    },
  ),
);