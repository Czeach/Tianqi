import 'package:flutter/material.dart';
import 'package:tianqi/screens/loading_screen.dart';
import 'package:http/http.dart' as http;
import 'json_model.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isLoading = false;
  WeatherModel weatherData;


  @override
  void initState() {
    getWeather();
    super.initState();
  }

  var currentIndex = 0;

  getWeather() async {
    setState(() {
      isLoading = true;
    });

    try {
      final weatherResponse = await http.get(
          'https://api.openweathermap.org/data/2.5/forecast?q=Port%20Harcourt&appid=100ef8029913a78ceeb3129acb20b497&cnt=5&units=metric');

      if (weatherResponse.statusCode == 200) {
        setState(() {
          weatherData = WeatherModel.fromJson(json.decode(weatherResponse.body));
        });
      }
    } catch (e){
      print(e.toString());
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Weather App',
      home: Scaffold(
        body: Container(
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 45,
              ),
              SafeArea(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Icon(
                        Icons.sort,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 305,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  '${weatherData?.city?.name ?? ''}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Container(
                    height: 480,
                    child: ListView.builder(
                        itemCount: weatherData?.mlist?.length ?? 0,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) => Padding(
                            padding:
                            const EdgeInsets.only(left: 35, right: 20),
                            child: LoadingScreen(weather: weatherData?.mlist[i],)
                        )
                    ),
                  ),
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
      ),

    );
  }
}
