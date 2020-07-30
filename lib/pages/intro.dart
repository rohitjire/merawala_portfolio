import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:merawala_portfolio/utils/assets.dart';
import 'package:merawala_portfolio/widgets/responsive_widget.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PDFDocument _doc;
  bool _loading;

  _getDoc() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(Assets.pdfPath);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  // ignore: must_call_super
  void initState() {
    // TODO: implement initState
    _getDoc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ResponsiveWidget(
          largeScreen: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello, I'm Rohit!",
                      textScaleFactor: 4,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GoogleSans',
                      ),
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
                    SizedBox(height: 40),
                    Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return _loading
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : PDFViewer(
                                      document: _doc,
                                    );
                            }),
                        child: Card(
                          color: Colors.black87,
                          child: Center(
                            child: Text(
                              'View Resume',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IndieFlower'),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          smallScreen: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Hello, I'm Rohit!",
                  textScaleFactor: 2,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                RotateAnimatedTextKit(
                  text: [
                    'Flutter',
                    'Dart',
                    'Data Science Enthusiast',
                    'Python',
                  ],
                  textStyle: TextStyle(color: Colors.black54, fontSize: 30),
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
