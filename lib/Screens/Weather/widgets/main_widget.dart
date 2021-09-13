import 'package:flutter/material.dart';
import '../Weatsher.dart';
import 'weather_tile.dart';

class MainWidget extends StatelessWidget{
  final location;
  final temp;
  final tempMin;
  final tempMax;
  final weather;
  final humidity;
  final windSpeed;


  MainWidget({
  @required this.location,
  @required this.temp,
  @required this.tempMin,
  @required this.tempMax,
  @required this.weather,
  @required this.humidity,
  @required this.windSpeed,
  });

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          color: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(4),
                height: 30,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(5.0)),
                ),
                child: new TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                    ),
                    hintText: 'Search Location',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:50),
              child: Text('${location.toString()}',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 10,bottom: 10),
                child: Text(
                  '${temp.toString()}°',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w900
                  ),
                ),
              ),
              Text('High ${tempMax.toString()}°\n low ${tempMin.toString()}°',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(icon: const Icon(Icons.refresh),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Weather()));
                }
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                WeatherTile(icon: Icons.thermostat_outlined, title: 'Temperature', subtitle: '${temp.toString()}°'),
                WeatherTile(icon: Icons.filter_drama_outlined, title: 'Weather', subtitle: '${weather.toString()}'),
                WeatherTile(icon: Icons.wb_sunny, title: 'Humidity', subtitle: '${humidity.toString()}%'),
                WeatherTile(icon: Icons.waves_outlined, title: 'Wind Speed', subtitle: '${windSpeed.toString()} KPH'),
              ],
            ),
          ),
        )
      ],
    );
  }
}