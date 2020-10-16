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
                    child:IconButton(
                      icon: Icon(Icons.directions_run),
                      
                      onPressed: () async {
                       
                        await _auth.signOut();
                       
                      }
                    )
                      
                    ),
                  ),
              

            
                
            ]
           
            
          ), //actions
          ),
      body:Column(
         children: <Widget>[
                Container(
                  height: 480,
                  width: 350,
          
                 margin: EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                     decoration: BoxDecoration(
                        color: Colors.green,
                            border: Border.all(
                             color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                        ),

                  

           
           

         ]
        
      )
      
    );
  }
}