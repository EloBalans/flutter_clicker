import 'package:flutter/material.dart';
import 'package:game_01/pages/authenticate/authenticate.dart';
import 'package:game_01/pages/authenticate/signin.dart';
import 'package:game_01/pages/mainscreen/mainscreen.dart';
import 'package:provider/provider.dart';
import 'package:game_01/models/user.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if( user == null){
      return Authenticate();
    }else{
      return mainscreen();
    }
  }
}