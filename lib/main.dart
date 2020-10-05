import 'package:flutter/material.dart';
import 'package:game_01/pages/home.dart';
import 'package:game_01/pages/loading.dart';
import 'package:game_01/pages/mainscreen.dart';
import 'package:game_01/pages/ability_tree.dart';
import 'package:game_01/pages/userinfo.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/mainscreen',  
    routes: {
     '/':(context) => Loading(),
     '/mainscreen':(context) => mainscreen(),
     '/ability_tree':(context) => ability_tree(),
     '/userinfo':(context) => userinfo(),
   }
));

 