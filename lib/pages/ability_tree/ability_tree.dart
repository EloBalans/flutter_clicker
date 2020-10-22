import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_01/services/custom_paint.dart';
import 'package:game_01/services/database.dart';
import 'package:game_01/models/user.dart';
import 'package:game_01/shared/loading.dart';
import 'package:game_01/services/assets.dart';
import 'package:provider/provider.dart';


class ability_tree extends StatefulWidget {
  @override
  _ability_treeState createState() => _ability_treeState();
}




class _ability_treeState extends State<ability_tree> {

int resources;
int lvl_abilityOne;
int lvl_abilityTwo;
int lvl_abilityThree;
int points;
int resToUpabilityOne;
int resToUpabilityTwo;
int resToUpabilityThree;
int intrest;
String username;
int wares;
String actualware;
int warespersec;
  void _showAlertabilityTwo(){
    showDialog(context: context,
      builder: (BuildContext context){
        return 
           
            AlertDialog(
            backgroundColor: Colors.green[500],
             title: Center(
              child: Text('Ability Two',
              textAlign: TextAlign.center,
                style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      ),
          ),
             ),
             content: Text('Aby odblokować tą umiejętność, \npotrzebujesz zdobyć 10 poziom \nw umiejętności 1',
              textAlign: TextAlign.center,
                style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      ),
          ),
            );
        
      },

    );
  }
  void _showAlertabilityThree(){
    showDialog(context: context,
      builder: (BuildContext context){
        return 
           
            AlertDialog(
            backgroundColor: Colors.red[500],
             title: Center(
              child: Text('Ability Three',
              textAlign: TextAlign.center,
                style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      ),
          ),
             ),
             content: Text('Aby odblokować tą umiejętność, \npotrzebujesz zdobyć 10 poziom \nw umiejętności 1',
              textAlign: TextAlign.center,
                style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      ),
          ),
            );
        
      },

    );
  }


  void _abilityOnePopout(context){
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context) {
         return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStateContext) {
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
              resources=userData.wares;
              resToUpabilityOne=userData.uptolvlone;
              resToUpabilityTwo=userData.uptolvltwo;
              resToUpabilityThree=userData.uptolvlthree;
              intrest=userData.intrest;


            return Container(
              color: Colors.blue[500],
              height:100,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                    Text("Nawodnienie",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text(" Nawodnienie znacznie"
                       "\n zwiększy plony oraz"
                       "\n jakość produktu",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   
                       
                        Text("poziom: $lvl_abilityOne/10",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing:2.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                     
                     
                       Container(
                     
                        child: RaisedButton(
                          color: Colors.blue[200],
                          onPressed: ((resources >= resToUpabilityOne)&(lvl_abilityOne<10))
                            ? () async {  
                              setStateContext(() {
                                resources -= resToUpabilityOne;
                                lvl_abilityOne += 1;
                                intrest += 1;
                                resToUpabilityOne = resToUpabilityOne * 2;
                                
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
                          }
                        : null,
                         
                          child: lvl_abilityOne==10 ? 
                          Text('MAX',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                      ),
                                    )
                                  : 
                                    Text('$resources/$resToUpabilityOne',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                      ),),
                      ),
                      ),

                      
                      ],
                     ) ,
                    

                 ],
              ),
            );
            
            }else{
             return Loading();
            }
            
          }
        );
          }
         );
    });
  
  
  }

  void _abilityTwoPopout(context){
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context) {
         return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStateContext) {
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
              resources=userData.wares;
              resToUpabilityOne=userData.uptolvlone;
              resToUpabilityTwo=userData.uptolvltwo;
              resToUpabilityThree=userData.uptolvlthree;
              intrest=userData.intrest;

            return Container(
              color: Colors.green[500],
              height:100,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                    Text("Ability Two",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("opis sdfsdfs"
                       "\nopis sdfsdfs"
                       "\nopis sdfsdfs"
                       "\nopis sdfsdfs",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   
                       
                        Text("Aktualny poziom: $lvl_abilityTwo/10",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing:2.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                     
                     
                       Container(
                     
                        child: RaisedButton(
                          color: Colors.green[200],
                          onPressed: ((resources >= resToUpabilityTwo)&(lvl_abilityTwo<10))
                            ? () async {  
                              setStateContext(() {
                                resources -= resToUpabilityTwo;
                                lvl_abilityTwo += 1;
                                intrest += 1;
                                resToUpabilityTwo = resToUpabilityTwo * 2;
                                
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
                          }
                        : null,
                         
                          child: lvl_abilityTwo==10 ? 
                          Text('MAX',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                      ),
                                    )
                                  : Text('$resources/$resToUpabilityTwo',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                      ),),
                      ),
                      ),

                      
                      ],
                     ) ,
                    

                 ],
              ),
            );
            
            }else{
             return Loading();
            }
            
          }
        );
          }
         );
    });
  
  
  }
  void _abilityThreePopout(context){
  showModalBottomSheet(
  context: context, 
  builder: (BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setStateContext) {
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
              resources=userData.wares;
              resToUpabilityOne=userData.uptolvlone;
              resToUpabilityTwo=userData.uptolvltwo;
              resToUpabilityThree=userData.uptolvlthree;
              intrest=userData.intrest;



            return Container(
              color: Colors.red[500],
              height:100,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                    Text("Ability Three",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("opis sdfsdfs"
                       "\nopis sdfsdfs"
                       "\nopis sdfsdfs"
                       "\nopis sdfsdfs",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing:2.0,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold
                       ),
                    ),
                   
                       
                        Text("Aktualny poziom: $lvl_abilityThree/10",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing:2.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                     
                     
                       Container(
                        child: RaisedButton(
                          color: Colors.red[200],
                          onPressed: ((resources >= resToUpabilityThree)&(lvl_abilityThree<10))
                            ? () async {  
                              setStateContext(() {
                                resources -= resToUpabilityThree;
                                lvl_abilityThree += 1;
                                warespersec += 1;
                                resToUpabilityThree = resToUpabilityThree * 2;
                            });
                            await DatabaseService(uid: user.uid).updateUserData(
                              username ?? userData.username,
                              lvl_abilityOne ?? userData.lvlabilityone, 
                              lvl_abilityTwo ?? userData.lvlabilitytwo, 
                              lvl_abilityThree ?? userData.lvlabilitythree,
                              actualware ?? userData  .actualware,
                              resources ?? userData.wares,
                              points ?? userData.points,
                              resToUpabilityOne ?? userData.uptolvlone,
                              resToUpabilityTwo ?? userData.uptolvltwo,
                              resToUpabilityThree ?? userData.uptolvlthree,
                              intrest ?? userData.intrest,
                              warespersec ?? userData.warespersec,
                              );
                          }
                        :null,
                          child: lvl_abilityThree==10 ? 
                          Text('MAX',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                      ),
                                    )
                                  :  Text('$resources/$resToUpabilityThree',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),
                          ),
                      ),
                      ),
                      ],
                     ) ,
                 ],
              ),
            );
            }else{
             return Loading();
            } 
          }
        );
       }
      );
  });
  
  
}

  abilitynull(){
    return 
    Expanded(
      flex:1,
        child: Container( 
        margin: EdgeInsets.all(10.0),
        ),
    );
  }

  abilityzero(){
    return 
      Expanded(
      flex:1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            border: Border.all(
              color: Colors.blue[200],
              width: 3,
            ),
          borderRadius: BorderRadius.circular(50.0)
          ),
          margin: EdgeInsets.all(5.0),
            child: IconButton(
                icon: Icon(Icons.art_track),
                color: Colors.white,
                onPressed:(){}
              ),
         ),
     );
  }
  
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
                              'DRZEWO UMIEJĘTNOŚCI',
                              style: TextStyle(
                                letterSpacing:2.0
                              ),
                            ),
                            
                          ],
                      ),
                  ),

                  Expanded(
                    flex: 1,
                      child: Container(),
                  ),

                
                    
                ]
               
                
              ), //actions
              ),
          body:
          LayoutBuilder(
            builder: (_, constraints) =>
            Container(
               color: Colors.white,
                child:CustomPaint(
                  painter:FaceOutlinePainter(),
                  child: Column( 
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    
                    Expanded(
                      
                      flex:7,
                       child: Row( 
                         
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[


                              Expanded(
                                flex:1,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    abilitynull(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilityzero(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilitynull(),
                                    
                                  ]
                                ),
                              ), 


                              Expanded(
                                flex:1,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    abilitynull(),
                                    abilitynull(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilityzero(),
                                    Expanded(
                                      flex:1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green[600],
                                          border: Border.all(
                                            color: Colors.green[600],
                                            width: 3,
                                          ),
                                          borderRadius: BorderRadius.circular(50.0)
                                        ),
                                        margin: EdgeInsets.all(5.0),
                                       
                                            child: IconButton(
                                              icon: Icon(Icons.art_track),
                                              color: Colors.white,
                                              
                                                onPressed:(){
                                                  if(lvl_abilityOne==10){
                                                    _abilityTwoPopout(context);
                                                  }else{
                                                   _showAlertabilityTwo();
                                                  }
                                                }
                                              ),
                                        
                                        
                                      ),
                                    ),
                                   abilitynull(),
                                  ]
                                ),
                              ), 


                              Expanded(
                                flex:1,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    abilityzero(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilitynull(),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue[700],
                                          border: Border.all(
                                            color: Colors.blue[700],
                                            width: 3,
                                          ),
                                          borderRadius: BorderRadius.circular(50.0)
                                        ),
                                        
                                            child: IconButton(
                                            icon: Icon(CustomIconswater.water),
                                            color: Colors.white,
                                            onPressed: () {
                                              _abilityOnePopout(context);
                                              } 
                                            ),
                                        margin: EdgeInsets.all(5.0),
                                      ),
                                  ]
                                ),
                              ),


                              Expanded(
                                flex:1,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    abilitynull(),
                                    abilitynull(),
                                    abilitynull(),
                                    abilitynull(),
                                    abilityzero(),
                                    Expanded(
                                      flex:1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red[700],
                                          border: Border.all(
                                            color: Colors.red[700],
                                            width: 3,
                                          ),
                                          borderRadius: BorderRadius.circular(50.0)
                                        ),
                                        margin: EdgeInsets.all(5.0),
                                         child: IconButton(
                                            icon: Icon(Icons.account_circle),
                                            color: Colors.white,
                                            onPressed:(){
                                                  if(lvl_abilityOne==10){
                                                    _abilityThreePopout(context);
                                                  }else{
                                                   _showAlertabilityThree();
                                                  }
                                                }
                                            ),
                                      ),
                                    ),
                                 abilitynull(),
                                  ]
                                ),
                              ),  


                              Expanded(
                                flex:1,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                   abilitynull(),
                                    abilityzero(),
                                    abilityzero(),
                                    abilityzero(),
                                    abilitynull(),
                                    abilitynull(),
                                    abilitynull(),
                                    

                                  ]
                                ),
                              ), 
                            ]
                      ),
                    ),



                     Expanded(
                       flex:1,
                        child: Container(
                         
                     
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(2.0),
                          child: Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            

                            children: <Widget>[
                               Expanded(
                                 flex:1,
                                  child: Container(
                                    height:48.0,
                                  padding: EdgeInsets.all(5.0),
                                  margin: EdgeInsets.all(2.0),
                                   decoration: BoxDecoration(
                        color: Colors.green,
                            border: Border.all(
                             color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                       
                                          
                                          Text(
                                            'Amnesia   ',
                                            style: TextStyle(
                                              letterSpacing:2.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          
                                          Container(
                                            height: 100,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Colors.green[300],
                                              border: Border.all(
                                                color: Colors.green[300],
                                              ),
                                              borderRadius: BorderRadius.circular(15.0)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                              Icon
                                                (CustomIcons.leaf,
                                                  color: Colors.red,
                                                ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  border: Border.all(
                                                    color: Colors.green[200],
                                                  ),
                                                borderRadius: BorderRadius.circular(15.0)
                                                ),

                                                child: FlatButton(
                                                  textColor: Colors.white,
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Wybierz',
                                                  )
                                                ),
                                              )  

                                              ]
                                            ),
                                          ),

                                          
                                  
                                ],
                             ),
                                  ),
                               ),
                             
                             






                            ]
                          ), 
                    ),
                     ),
                  ]
            ),
                ),
            ),
          ),
        );
      }else{
        return Loading();
      }
      }
    );
      
    
  }
}