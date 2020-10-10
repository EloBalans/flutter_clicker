import 'package:flutter/material.dart';
import 'package:game_01/pages/authenticate/signin.dart';
import 'package:game_01/pages/loading.dart';
import 'package:game_01/pages/mainscreen.dart';
import 'package:game_01/pages/ability_tree.dart';
import 'package:game_01/pages/userinfo.dart';
import 'package:game_01/pages/wrapper.dart';
import 'package:game_01/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:game_01/models/user.dart';

void main(){ 
  WidgetsFlutterBinding.ensureInitialized();
  runApp(StreamProvider<User>.value(
  value: AuthService().user,
  child:MaterialApp(
  initialRoute: '/wrapper',  
    routes: {
     '/':(context) => Loading(),
     '/wrapper':(context) => Wrapper(),
     '/mainscreen':(context) => mainscreen(),
     '/ability_tree':(context) => ability_tree(),
     '/userinfo':(context) => userinfo(),
     '/signin':(context) => SignIn(),
   }
),
)
);
}
 