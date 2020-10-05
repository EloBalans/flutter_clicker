import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int resources=0;

int points=0;
int lvl_water=0;
int lvl_light=0;
int lvl_ventilation=0;
int restoupwater=10;
int restouplight=10;
int restoupventilation=10;
int intrest=1;

void changeresurces(){
  setState(() {
    resources += intrest;
    points += intrest;
  });
}
void upgradewater(){
  setState(() {
    resources -= restoupwater;
    lvl_water +=1;
    intrest+=lvl_water;
    restoupwater=restoupwater*2;
  });
}
void upgradelight(){
  setState(() {
    resources -= restouplight;
    lvl_light +=1;
    intrest+=lvl_light;
    restouplight=restouplight*2;
  });
}
void upgradeventilation(){
  setState(() {
    resources -= restoupventilation;
    lvl_ventilation +=1;
    intrest+=lvl_ventilation;
    restoupventilation=restoupventilation*2;
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
        
        
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

             Container(
               
              color: Colors.green[100],
              padding: EdgeInsets.all(5.0),
              
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
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Andrzej',
                                style: TextStyle(
                                  letterSpacing:2.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  
                                ),
                              ),
                    
                        Text(
                          'Punkty: $points',
                              style: TextStyle(
                              letterSpacing:2.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              ),
                            ),
                      ],
                   ),
                        ),
                     ),
                    Expanded(
                      flex:1,
                         child: Container(
                           height:48.0,
                           color: Colors.green[500],
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
                                Icon(Icons.account_circle,
                                 color: Colors.red[300],
                                 ),
                                Text(
                                '',
                                  style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.account_circle,
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
                                Icon(Icons.account_circle,
                                 color: Colors.blue[400],
                                ),
                                Text(
                                '0',
                                  style: TextStyle(
                                  fontSize: 13.0,
                                   color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.account_circle,
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
            Container(
              child: InkWell(
                onTap: changeresurces,
                child: Image(
                  image: AssetImage('assets/room_02_testdecorated.png'),
                  fit: BoxFit.cover, 
                  
                  ),
                  
             
                
              ),    
            ),
            
            Container(
              color: Colors.green[100],
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text('Nawodnienie poziom: $lvl_water'),
                  ),
                  
                  
                  Container(
                  
                    child: RaisedButton(
                    color: Colors.green[500],
                    onPressed: (resources<restoupwater)? null : upgradewater,  
                      child: Text('$resources/$restoupwater',
                                  style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                  ),
                  ),
                  
                ],
              
                
                
                
                ),
               
            ),
            
            Container(
              color: Colors.green[100],
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text('Naświeltenie poziom: $lvl_light'),
                  ),
                  
                  Container(
                 
                    child: RaisedButton(
                      color: Colors.green[500],
                     onPressed: (resources<restouplight)? null : upgradelight,
                      child: Text('$resources/$restouplight',
                                  style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),),
                  ),
                  ),
                ],
              
                
                
                
                ),
               
            ),
              
            
            Container(
              color: Colors.green[100],
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text('Wentylacja poziom: $lvl_ventilation'),
                  ),
                  
                  Container(
                 
                    child: RaisedButton(
                       color: Colors.green[500],
                       onPressed: (resources<restoupventilation)? null : upgradeventilation,
                     
                      child: Text('$resources/$restoupventilation',
                                  style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),),
                  ),
                  ),
                ],
              
                
                
                
                ),
               
            ),
            
          ],  


        ),
        
        ), 
        
         
    );
    
  }

}