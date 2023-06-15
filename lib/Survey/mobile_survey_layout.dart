import 'package:flutter/material.dart';

import '../utilities/my_tile.dart';
import 'SurveyPage/survey_structure.dart';
import 'SurveyUtilities/open_survey_clickable.dart';

var mobileSurveyLayout = Column(
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
