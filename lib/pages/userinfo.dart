import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_01/pages/authenticate/authenticate.dart';
import 'package:game_01/services/auth.dart';


class userinfo extends StatefulWidget {

 
  @override
  _userinfoState createState() => _userinfoState();
}
 final AuthService _auth = AuthService();
class _userinfoState extends State<userinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          backgroundColor:Colors.green[500],
          actions:(
            <Widget>[
             
              Expanded(
                flex: 1,
                 
                  child: Container(),
              ),

              Expanded(
                flex: 4,
                 child: Column( 
          
        
                      children: <Widget>[
                       
                        SizedBox(height: 8.0),

                        Text(
                          'CANNABIS SPOT',
                          style: TextStyle(
                            letterSpacing:2.0,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        

                        Text(
                          'INFO GRACZA',
                          style: TextStyle(
                            letterSpacing:2.0
                          ),
                        ),
                        
                      ],
                  ),
              ),

              Expanded(
                flex: 1,
                  child: Container(
                    child:FlatButton(
                      child: Text("logout"),
                      onPressed: () async {
                        await _auth.signOut();
                       
                      }
                    )
                      
                    ),
                  ),
              

            
                
            ]
           
            
          ), //actions
          ),
      body: Text('sdgssd'),
      
    );
  }
}