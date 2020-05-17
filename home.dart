import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);
    String DayorNOt=data['isDayTime']?'Daytime.jpg':'nighttime.jpg';
    Color bgcolor=data['isDayTime']?Colors.blue:Colors.black45;

    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$DayorNOt'),
                fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () async {
                      dynamic result=await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data={
                          'time' : result['time'],
                          'flag' : result['flag'],
                          'location' : result['location'],

                          'isDayTime' : result['isDayTime'],
                        };
                        print(data);
                      });
                    },

                    icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[300],
                    ),
                    label: Text(
                        'Edit Location',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                    )
                ),
                SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['location'],
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 28.0,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 66.0,
                  ),
                ),
                SizedBox(height: 77.0),
                FlatButton.icon(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.amber,
                  ),
                  label: Text(
                    'Developer',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/bidyut');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      //body: SafeArea(child: Text('from Home page')),
    );
  }
}

