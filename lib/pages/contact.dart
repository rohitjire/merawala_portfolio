import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merawala_portfolio/widgets/social_media_widget.dart';

import '../utils/assets.dart';
import '../utils/constants.dart';

class ContactMePage extends StatefulWidget {
  @override
  _ContactMePageState createState() => _ContactMePageState();
}

class _ContactMePageState extends State<ContactMePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialMedia(Assets.github, 'Github', Constants.GITHUB_LINK),
        SocialMedia(Assets.linkedin, 'LinkedIn', Constants.LINKEDIN_LINK),
        SocialMedia(Assets.instagram, 'Instagram', Constants.INSTAGRAM_LINK),
        SocialMedia(Assets.twitter, 'Twitter', Constants.TWITTER_LINK),
      ],
    ));
  }
}
