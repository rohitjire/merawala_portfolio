import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:merawala_portfolio/utils/assets.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: MediaQuery.of(context).size.width < 600
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage(Assets.profile),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text("Hello I'm Rohit!",
                          style: Theme.of(context).textTheme.headline1),
                    ])
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 120,
                          backgroundImage: AssetImage(Assets.profile),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'TechFreak. Guitar.\n Cricket. Music. Nature Lover.',
                          style: Theme.of(context).textTheme.caption,
                          textScaleFactor: 2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Hello, I'm Rohit!",
                          textScaleFactor: 4,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(height: 28),
                        RotateAnimatedTextKit(
                          text: [
                            'Flutter',
                            'Dart',
                            'Data Science Enthusiast',
                            'Python',
                          ],
                          textStyle: Theme.of(context).textTheme.headline4,
                          isRepeatingAnimation: true,
                          repeatForever: true,
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
