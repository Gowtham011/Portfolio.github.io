import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final String linkedin = 'www.linkedin.com/in/gowtham-dhanabalan-5aa1b5209';
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Gowtham',
            style: TextStyle(color: Colors.white),
          ),
          foregroundColor: Colors.white,
          actions: [
            FlatButton(
                onPressed: () {},
                child: Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: FlatButton(
                disabledTextColor: Colors.grey,
                onPressed: () {},
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
            stops: [0.1, 0.5, 0.7, 0.9],
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
                  Text('LinkedIn:$linkedin'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
