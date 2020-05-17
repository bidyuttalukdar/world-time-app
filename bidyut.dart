import 'package:flutter/material.dart';

class Bidyut extends StatefulWidget {
  @override
  _BidyutState createState() => _BidyutState();
}

class _BidyutState extends State<Bidyut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[750],
      appBar: AppBar(
        title: Text(
          'Developer',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 33,),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/DSC_1705.JPG'),

                radius: 55.0,
              ),
            ),
            Divider(
              height: 53,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(77.0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 31,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 19,),
                  Text(
                    'Bidyut Talukdar',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.fromLTRB(77.0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    size: 31,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 19,),
                  Text(
                    'bidyut3004@gmail.com',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.fromLTRB(77.0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 31,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 19,),
                  Text(
                    '8486877387',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(77.0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.link,
                    size: 31,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 19,),
                  Text(
                    '8486877387',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
