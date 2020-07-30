import 'dart:html' as html;

import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final String description;
  final String projectLogo;
  final String projectLink;

  ProjectWidget(
      {this.projectName, this.description, this.projectLogo, this.projectLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 350,
      child: InkWell(
        onTap: () => html.window.open(projectLink, projectName),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    projectLogo,
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectName,
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                          ),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
