import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double radius = 90.0;
    _launchGIT() async {
      const giturl = 'https://www.github.com/gowtham011';
      if (await canLaunch(giturl)) {
        await launch(giturl);
      } else {
        throw 'Could not launch $giturl';
      }
    }

    _launchURL() async {
      const url = 'https://www.linkedin.com/in/gowtham-dhanabalan-5aa1b5209/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Gowtham's Portfolio",
            style: TextStyle(color: Colors.white),
          ),
          foregroundColor: Colors.white,
          actions: [
            FlatButton(
                onPressed: () {
                  _launchGIT();
                },
                child: Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: FlatButton(
                onPressed: () {
                  _launchURL();
                },
                child: Text(
                  'Contact Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.black),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.5,
                0.7,
                0.9
              ],
              colors: [
                Colors.pink,
                Colors.purple,
                Colors.deepPurpleAccent,
                Colors.purpleAccent,
              ],
            ),
          ),
          height: height,
          width: width,
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: height * 0.10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4E03AQE7veLxG9146Q/profile-displayphoto-shrink_800_800/0/1628261390186?e=1643241600&v=beta&t=OSu0KrIZzy20ETNFgJBIyI2Zp-NOawh-_FvniFPeLZo'),
                      radius: radius,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: Text(
                    'Hi This Is Gowtham.Application Developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black, fontSize: 28),
                    ),
                    SizedBox(height: height * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Html-CSS-JavaScript-NodeJs-Flutter-Dart-Firebase-Python-Java-C Programming',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: height * 0.05),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        splashColor: Colors.deepPurpleAccent,
                        hoverColor: Colors.blue[800],
                        color: Colors.blueAccent,
                        onPressed: () {
                          _launchGIT();
                        },
                        child: Text(
                          ' Projects   ',
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      SizedBox(width: 45),
                      FlatButton(
                          splashColor: Colors.deepPurpleAccent,
                          hoverColor: Colors.blue[800],
                          color: Colors.blueAccent,
                          onPressed: () {
                            _launchURL();
                          },
                          child: Text(
                            'Contact Me',
                            style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.17,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Copyright 2021.Gowtham.All Rights Reserved'),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
