import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../widgets/project_widget.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            ProjectWidget(
              projectName: 'FlashChat',
              projectLogo: Assets.flutterLogo,
              description:
                  'FlashChat is a basic messaging app which for one to one users',
            ),
//            SizedBox(
//              height: 20,
//            ),
//            ProjectWidget(),
//            SizedBox(
//              height: 20,
//            ),
//            ProjectWidget(),
            SizedBox(
              height: 60,
            ),
            Text(
              'More Yet to come...',
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.black45,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
