import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/Survey/SurveyPage/survey_structure.dart';

import '../utilities/large_tile.dart';
import '../utilities/my_tile.dart';
import 'SurveyUtilities/open_survey_clickable.dart';

var tabletSurveyLayout = Column(
  children: [
    Container(
      child: MyTile(),
    ),
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
);
