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
              height: MediaQuery.of(context).size.height * 0.68,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
                          child: Text(
                            '30',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 120,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Rain',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                              ),
                        ),
                        SizedBox(height: 100),
                        Text('Light rain stoping in ten minutes, you wanna grab your bag, it starts again in 10 mins',
                        style: TextStyle(fontSize: 15, color: Colors.white70),),
                        SizedBox(height:50),
                        Divider(color: Colors.white38,),
                        SizedBox(height:15),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('28-32', style:TextStyle(color: Colors.white70),),
                              Icon(Icons.cloud_queue, color: Colors.red,),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height:5,
                  width:5,
                  color: Colors.limeAccent[400],
                ),
                SizedBox(width:5),
                Text('Updated 3 mins ago', style: TextStyle(color: Colors.white70, fontSize: 12),),
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
