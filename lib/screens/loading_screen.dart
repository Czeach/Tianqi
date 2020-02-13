import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.sort,
                    size: 30,
                    color: Colors.white70,
                  ),
                  Icon(Icons.add, size: 30, color: Colors.white70),
                ],
              ),
            ),
            SizedBox(height: 22.0),
            Container(
              width: 350,
              height: 20,
              //color: Colors.red,
              child: Text(
                'Port Harcourt',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 450,
              width: 350,
              decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(25)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
