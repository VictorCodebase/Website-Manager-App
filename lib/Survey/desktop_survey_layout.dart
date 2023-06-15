import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Survey/SurveyPage/survey_structure.dart';
import 'package:responsive_flutter_app1/Survey/SurveyUtilities/open_survey_clickable.dart';
import 'package:responsive_flutter_app1/utilities/large_tile.dart';

import '../utilities/my_tile.dart';

var desktopSurveyLayout = Expanded(
  flex: 3,
  child: Column(
    children: [
      //4 boxes on the top
      Container(
        child: MyTile(),
      ),

      //tiles on the bottom
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurveyStructure(),
                  ),
                );
              },
              child: OpenSurvey(title: "How introduction to the Gospel influences chances of remaining strong or ever knowing Christ", date: '12-01-2012', turnout: 121),
            );
          },
        ),
      )
    ],
  ),
);
