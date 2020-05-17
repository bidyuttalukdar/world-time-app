import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;  // location name for that UI
  String time;// time at that location
  String flag; // url for that flag icon
  String url; // end point location
  bool isDayTime;//true or flase wgere day time or not



  WorldTime({this.location,this.url,this.flag});

  Future<void> getTime() async {
    //make a request
    try{
      Response response=await get('http://worldtimeapi.org/api/timezone/$url');
      Map data=jsonDecode(response.body);

      //get the data
      String datetime=data['datetime'];
      String offset=data['utc_offset'].substring(1,3);
      //print(datatime);
      //print(offset);

      //Make ab object
      DateTime now =DateTime.parse(datetime);
      now=now.add(Duration(hours: int.parse(offset)));
      //print(now);
      /* Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map datass=jsonDecode(response.body);
    print('$datass');*/

      //set the time property
      isDayTime=now.hour>6 && now.hour<19?true:false;
      time=DateFormat.jm().format(now);
    }
    catch (e){
      time="Location has not founnnnnnnnnnnnnnnnnnnnnnddddd";
    }

  }
}


