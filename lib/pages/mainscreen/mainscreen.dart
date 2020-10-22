import 'dart:async';
import 'package:game_01/services/assets.dart';
import 'package:flutter/material.dart';
import 'package:game_01/models/user.dart';
import 'package:game_01/services/database.dart';
import 'package:game_01/shared/loading.dart';
import "package:provider/provider.dart";

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {


int resources;
int points;
int intrest;
String username;
int lvl_abilityOne;
int lvl_abilityTwo;
int lvl_abilityThree;
int resToUpabilityOne;
int resToUpabilityTwo;
int resToUpabilityThree;
String actualware;
int  warespersec;
Timer _timer;

//void _StartTimer(){
 // StatefulBuilder(
//    builder: (BuildContext context, StateSetter setStateContext) {
//      final user = Provider.of<User>(context);
//      return StreamBuilder<UserData>(
//       stream: DatabaseService(uid: user.uid).userData,
//        builder: (context, snapshot) {
//          if(snapshot.hasData){
//            _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//          setState(() {
//      resources +=warespersec;
//    });
//            }
///          }
//   });
//}

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
   

    return  StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData){
            UserData userData = snapshot.data;
            username = userData.username;
            points = userData.points;
            resources = userData.wares;
            intrest = userData.intrest;
            warespersec = userData.warespersec;

             
        return Scaffold(
              appBar: AppBar(
                backgroundColor:Colors.green[600],
                actions:(
                  <Widget>[
                    Expanded(
                      flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.dashboard),
                          onPressed: () {
                            Navigator.pushNamed(context, '/ability_tree');
                          } ),
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
                                'THE GAME',
                                style: TextStyle(
                                  letterSpacing:2.0
                                ),
                              ),
                              
                            ],
                        ),
                    ),

                    Expanded(
                      flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.account_circle),
                          onPressed: () {
                            Navigator.pushNamed(context, '/userinfo');
                          } ),
                    ),

                  
                      
                  ]
                 
                  
                ), //actions
              ),
              body: Container(
                margin: EdgeInsets.all(2.0),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                   Expanded(
                     flex:2 ,
                      child: Container(
                      decoration: BoxDecoration(
                                            color: Colors.green[600],
                                            border: Border.all(
                                              color: Colors.green[600],
                                              width: 3,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0)
                                          ),
                      padding: EdgeInsets.all(5.0),
                      
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Expanded(
                              flex:1,
                                child: Container(
                                height:60.0,
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                            color: Colors.green[400],
                                            border: Border.all(
                                              color: Colors.green[400],
                                              width: 3,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0)
                                          ),
                                  child: Column(
                                    children: <Widget>[
                                        Expanded(
                                          flex:1,
                                          child: Text(
                                            '$username',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              letterSpacing:2.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                           ),
                                       ),
                                        ),
                            
                                        Expanded(
                                            flex:1,
                                            child: Text(
                                            'Punkty: $points',
                                            style: TextStyle(
                                              letterSpacing:2.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                                 child: Container(
                                   decoration: BoxDecoration(
                                            color: Colors.green[400],
                                            border: Border.all(
                                              color: Colors.green[400],
                                              width: 3,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0)
                                          ),
                                   height:60.0,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                        Text(
                                        '$resources',
                                          style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          ),
                                        ),
                                        Icon(CustomIcons.leaf,
                                         color: Colors.red[300],
                                         ),
                                        Text(
                                        '0',
                                          style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          ),
                                        ),
                                        Icon(CustomIcons.leaf,
                                         color: Colors.yellow[500],
                                         ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                        Text(
                                        '0',
                                          style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          ),
                                        ),
                                        Icon(CustomIcons.leaf,
                                         color: Colors.blue[400],
                                        ),
                                        Text(
                                        '0',
                                          style: TextStyle(
                                          fontSize: 13.0,
                                           color: Colors.white,
                                          ),
                                        ),
                                        Icon(CustomIcons.leaf,
                                         color: Colors.brown[100],
                                         ),
                                        ],
                                      ),
                                     ],
                                   ),
                                 ),
                            ),
                           






                          ]
                        ), 
                  ),
                   ),
                  Expanded(
                    flex:8,
                    child: Container(
                      child: InkWell(
                        onTap:() async {
                          setState(() {
                            resources += intrest;
                            points += intrest;
                            
                          });
                          await DatabaseService(uid: user.uid).updateUserData(
                                username ?? userData.username, 
                                lvl_abilityOne ?? userData.lvlabilityone, 
                                lvl_abilityTwo ?? userData.lvlabilitytwo, 
                                lvl_abilityThree ?? userData.lvlabilitythree, 
                                actualware ?? userData.actualware,
                                resources ?? userData.wares,
                                points ?? userData.points,
                                resToUpabilityOne ?? userData.uptolvlone,
                                resToUpabilityTwo ?? userData.uptolvltwo,
                                resToUpabilityThree ?? userData.uptolvlthree,
                                intrest ?? userData.intrest,
                                warespersec ?? userData.warespersec,
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/room_02_testdecorated.png'),
                          height:310.0,
                          width: 310.0,

                          fit: BoxFit.cover, 
                          
                          ),
                          
                     
                        
                      ),    
                    ),
                  ),
                  
                  
                  
                  
                    
                  
                 Expanded(
                   flex :3,
                   child: Container(
                       margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        
                        color: Colors.green[600],
                        border: Border.all(
                          color: Colors.green[600],
                          width: 3,
                        ),
                      borderRadius: BorderRadius.circular(20.0)
                      ),
                      padding: EdgeInsets.all(5.0),
                      
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                             Expanded(
                               flex:1,
                                child: Container(
                                  decoration: BoxDecoration(
                                            color: Colors.green[400],
                                            border: Border.all(
                                              color: Colors.green[400],
                                              width: 3,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0)
                                          ),
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.all(2.0),
                                  child: Column(
                                    children: <Widget>[
                                      
                                     
                            
                                
                                      ],
                                  ),
                                ),
                              ),
                              Expanded(
                               flex:3,
                                child: Container(
                                  decoration: BoxDecoration(
                                            color: Colors.green[400],
                                            border: Border.all(
                                              color: Colors.green[400],
                                              width: 3,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0)
                                          ),
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.all(2.0),
                                  child: Center
                                  (child: Text('sdfsdfsd')),
                                ),
                              ),
                            
                           






                          ]
                        ), 
                    ),
                 ), 
                  
                ],  

                
              ),
              
              ), 
              
               
          );}else{
            return Loading();
          }
      }
    );
    
    
  }

}