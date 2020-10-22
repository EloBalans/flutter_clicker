import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_01/models/user.dart';
import 'package:game_01/pages/authenticate/authenticate.dart';
import 'package:game_01/services/auth.dart';
import 'package:game_01/services/database.dart';
import 'package:game_01/shared/loading.dart';
import 'package:provider/provider.dart';


class userinfo extends StatefulWidget {

 
  @override
  _userinfoState createState() => _userinfoState();
}

int resources;
int lvl_abilityOne;
int lvl_abilityTwo;
int lvl_abilityThree;
String nick;
int resToUpabilityOne;
int resToUpabilityTwo;
int resToUpabilityThree;
int intrest;
String username;
int wares;
String actualware;
 final AuthService _auth = AuthService();
class _userinfoState extends State<userinfo> {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
         if(snapshot.hasData){

        UserData userData = snapshot.data;
          lvl_abilityOne=userData.lvlabilityone;
          lvl_abilityTwo=userData.lvlabilitytwo;
          lvl_abilityThree=userData.lvlabilitythree;
          actualware=userData.actualware;
          wares=userData.wares;
          nick=userData.username;
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
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex:2,
                            child: Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.green[300],
                                border: Border.all(
                                  color: Colors.green[300],
                                ),
                              borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                                child:Column(
                                  children: <Widget>[
                                    Center(
                                      child: Text('$nick',
                                      style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing:2.0,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  ),
                                    ),
                                  ]
                                ),

                            ),
                          ),
                          Expanded(
                            
                            flex:4,
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.green[300],
                                border: Border.all(
                                  color: Colors.green[300],
                                ),
                              borderRadius: BorderRadius.circular(15.0)
                             
                              ),
                              margin: EdgeInsets.fromLTRB(15.0,0.0,15.0,15.0),
                              child:Column(
                                children: <Widget>[
                                    Row(
                                    children: <Widget>[
                                     SizedBox(height: 30.0),
                                        Text('email: ',
                                          style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing:2.0,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Text('w5fwswtgwegw',
                                          style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing:2.0,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      
                                    ]
                                  ),

                                  Row(
                                    children: <Widget>[
                                     SizedBox(height: 30.0),
                                        Text('email: ',
                                          style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing:2.0,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Text('w5fwswtgwegw',
                                          style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing:2.0,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      
                                    ]
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green[300],
                                border: Border.all(
                                  color: Colors.green[300],
                                ),
                              borderRadius: BorderRadius.circular(15.0)
                              ),
                              margin: EdgeInsets.fromLTRB(15.0,0.0,15.0,15.0),
                              
                            ),
                          ),

                        ]
                      ), 
                    ),

                      

               
               

             ]
            
          )
          
        );
         }else{
           return Loading();
         }
      }
    );
  }
}