// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  final String imageUrl;
  final String imageName;
  final String socialLinks;

  const SocialMedia(this.imageUrl, this.imageName, this.socialLinks);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => html.window.open(socialLinks, imageName),
          child: Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromRGBO(189, 189, 189, 1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  color: Colors.grey,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          imageName,
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
