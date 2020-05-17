import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:worldtime/service/worldtime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time='loading';

  void setWorldtime() async{
    WorldTime inst=WorldTime(location: 'Europe',flag: 'assets/',url: 'Europe/London');
    await inst.getTime();

    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': inst.location,
      'flag' : inst.flag,
      'time' : inst.time,
      'isDayTime':inst.isDayTime,
    });
    //print(inst.time);


    /*   setState(() {
      time=inst.time;
    });
 */ }

  @override
  void initState() {
    super.initState();
    //print('From the init funxtion');
    //getTime();
    setWorldtime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),

    );
  }
}
