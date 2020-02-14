import 'package:flutter/material.dart';
import 'package:tianqi/json_model.dart';

class LoadingScreen extends StatelessWidget {

  final Mlist weather;
  LoadingScreen({@required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.black87.withOpacity(0.7),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
              child: Text(
                "${weather?.main?.temp ?? ''}°",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 120,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '${weather?.weather[0]?.main ?? ''}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 100),
            Text('${weather.weather[0].description}',
              style: TextStyle(fontSize: 15, color: Colors.white70),),
            SizedBox(height:50),
            Divider(color: Colors.white38,),
            SizedBox(height:15),
            Padding(
              padding: const EdgeInsets.only(left:10.0, right:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("${weather?.main?.tempMin ?? ''}° - ${weather?.main?.tempMax ?? ''}°",
                    style:TextStyle(color: Colors.white70),),
                  Icon(
                    Icons.cloud_queue,
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
