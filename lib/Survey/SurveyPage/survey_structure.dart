import 'package:flutter/material.dart';
import 'package:responsive_flutter_app1/constants.dart';

class SurveyStructure extends StatefulWidget {
  const SurveyStructure({Key? key}) : super(key: key);

  @override
  State<SurveyStructure> createState() => _SurveyStructureState();
}

class _SurveyStructureState extends State<SurveyStructure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey Name"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: defaultSpecial,
      ),
    );
  }
}
