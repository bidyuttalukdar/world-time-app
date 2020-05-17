import 'package:flutter/material.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

import 'package:worldtime/pages/choose_location.dart';

import 'package:worldtime/Developer/bidyut.dart';

void main() => runApp(MaterialApp(
  //home: Home(), because error ahibo '/' loading tu kora goise
  initialRoute: '/',
  routes: {
    '/':  (context) => Loading(),
    '/home':(context)=> Home(),
    '/location':(context) =>  ChooseLocation(),
    '/bidyut':(contaxt) => Bidyut(),
  },

));

