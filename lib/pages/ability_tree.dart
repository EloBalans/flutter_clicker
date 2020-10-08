import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ability_tree extends StatefulWidget {
  @override
  _ability_treeState createState() => _ability_treeState();
}




class _ability_treeState extends State<ability_tree> {

int resources=1000000;
int lvl_abilityOne=0;
int lvl_abilityTwo=0;
int lvl_abilityThree=0;
int resToUpabilityOne=10;
int resToUpabilityTwo=10;
int resToUpabilityThree=10;
int intrest=1;
int kupa;
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
        return Container(
          color: Colors.blue[500],
          height:100,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                Text("Ability one",
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
               
                   
                    Text("Aktualny poziom: $lvl_abilityOne/10",
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
                        ? () {  
                          setStateContext(() {
                            resources -= resToUpabilityOne;
                            lvl_abilityOne += 1;
                            intrest += lvl_abilityOne;
                            resToUpabilityOne = resToUpabilityOne * 2;
                        });
                      }
                    : null,
                     
                      child: Text('$resources/$resToUpabilityOne',
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
          }
         );
    });
  
  
  }

  void _abilityTwoPopout(context){
    showModalBottomSheet(
      context: context, 
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStateContext) {
        return Container(
          
          color: Colors.green[500],
          height:100,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                Text("Ability two",
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
                Column(
                   children: [
                    Text("koszt: $resources/$resToUpabilityTwo",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                     ),
                  ),
                    Text("Aktualny poziom: $lvl_abilityTwo",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                   ],
                ),
                 
                  Container(
                      child: RaisedButton(
                      color: Colors.green[500],
                        onPressed: ((resources >= resToUpabilityTwo)&(lvl_abilityTwo<10))
                        ? () {
                          setStateContext(() {
                            resources -= resToUpabilityTwo;
                            lvl_abilityTwo += 1;
                            intrest += lvl_abilityTwo;
                            resToUpabilityTwo = resToUpabilityTwo * 2;
                        });
                      }
                    : null,
                      child: Text('$resources/$resToUpabilityTwo',
                        style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
                  )
                  ],
                 ) ,
                

             ],
          ),
        );
          }
        );
    });
  }

  void _abilityThreePopout(context){
    showModalBottomSheet(
      context: context,
       builder: (context) {
         return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStateContext) {
        return Container(
          color: Colors.yellow[500],
          height:100,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                Text("Ability tree",
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
                Column(
                   children: [
                    Text("koszt: $resources/$resToUpabilityThree",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                     ),
                  ),
                    Text("Aktualny poziom: $lvl_abilityThree",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing:2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                   ],
                ),
                 
                  Container(
                 
                    child: RaisedButton(
                      color: Colors.green[500],
                        onPressed: ((resources >= resToUpabilityThree)&(lvl_abilityThree<10))
                        ? () {
                          setStateContext(() {
                            resources -= resToUpabilityThree;
                            lvl_abilityThree += 1;
                            intrest += lvl_abilityThree;
                            resToUpabilityThree = resToUpabilityThree * 2;
                        });
                      }
                    : null,
                      child: Text('$resources/$resToUpabilityThree',
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

          }
         );
    });
  
  
  }
  
 
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
      Container(
         color: Colors.white,
          child:Column( 
          
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
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                          ]
                        ),
                      ), 


                      Expanded(
                        flex:1,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.green[600],
                                margin: EdgeInsets.all(10.0),
                               
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
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                          ]
                        ),
                      ), 


                      Expanded(
                        flex:1,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            
                              Container(
                                color: Colors.blue[700],
                                    child: IconButton(
                                    icon: Icon(Icons.leak_remove),
                                    color: Colors.white,
                                    onPressed: () {
                                      _abilityOnePopout(context);
                                      } 
                                    ),
                                margin: EdgeInsets.all(10.0),
                              ),
                            
                          ]
                        ),
                      ),


                      Expanded(
                        flex:1,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.red[500],
                                margin: EdgeInsets.all(10.0),
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
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                          ]
                        ),
                      ),  


                      Expanded(
                        flex:1,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.blue[100],
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ),
                            

                          ]
                        ),
                      ), 
                    ]
              ),
            ),



             Expanded(
               flex:1,
                child: Container(
                 
                color: Colors.green[100],
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
                          color: Colors.green[500],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                               
                                  
                                  Text(
                                    'Rodzaj nr 1   ',
                                    style: TextStyle(
                                      letterSpacing:2.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  
                                  Icon
                                    (Icons.account_circle,
                                     color: Colors.red,
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
    );
      
    
  }
}