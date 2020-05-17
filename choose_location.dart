import 'package:flutter/material.dart';

import 'package:worldtime/service/worldtime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
 int counter=0;

 List<WorldTime> locations=[
   WorldTime(location: 'India',url: 'Asia/Kolkata',flag: 'india.png'),
   WorldTime(location: 'Australia',url: 'Australia/Sydney',flag: 'Australia.jpg'),
   WorldTime(location: 'Europe',url: 'Europe/London',flag: 'Europe.jpg'),
   WorldTime(location: 'Newzi',url: 'Australia/Eucla',flag: 'NewZealand.png'),
   WorldTime(location: 'Bangladesh',url: 'Asia/Dhaka',flag: 'Bangladesh.png'),
   WorldTime(location: 'kiev',url: 'Europe/Kiev',flag: 'india.png'),
   WorldTime(location: 'Maldives',url: 'Indian/Maldives',flag: 'Maldives.png'),
   WorldTime(location: 'India',url: 'Asia/Kolkata',flag: 'india.png'),
   WorldTime(location: 'India',url: 'Asia/Kolkata',flag: 'india.png'),
 ];

  void updateTime(index) async{
    WorldTime inst=locations[index];
    await inst.getTime();
    //navigsating by cancel the prevoius screen
    Navigator.pop(context,{
    'location': inst.location,
    'flag' : inst.flag,
    'time' : inst.time,
    'isDayTime':inst.isDayTime,
    });

  }
 // async word is used to provide some synchronization
 // await word is used to tell first run that specific one then go from top to bottom
 // Future.Delayed is non restricted function

 /*void getData() async {

   String user=await Future.delayed(Duration(seconds: 3),(){
     return 'Bidyut';
   });

   String paswd=await Future.delayed(Duration(seconds: 2),(){
     return '123';
   });

   print('Statement');

   *//*Future.delayed(Duration(seconds: 3),(){
     print('From 1st Future delayed Function');
   })*//*
 }

 @override
  void initState() {
    super.initState();
    print('From the init funxtion');
  }
 */
 @override
  Widget build(BuildContext context) {
    //print('From The Bulid function');
    return Scaffold(
      backgroundColor: Colors.grey[111],
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),

       body:ListView.builder(
               itemCount: locations.length,
             itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                  child: Card(
                    child: ListTile(
                      onTap: (){
                        updateTime(index);
                      },
                      title: Text(locations[index].location),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/${locations[index].flag}'),
                      ),
                    ),
                  ),
                );
             },
           ),
      /*RaisedButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Text('Counter = $counter'),
      ),*/
      // Text('from choose location scereen'),
    );
  }
}
