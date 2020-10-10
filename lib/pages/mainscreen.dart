import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {int resources=0;

int points=0;
Map data = {};
int intrest=1;
int surcesFromTree=0;


void changeresurces(){
  setState(() {
    resources += intrest;
    points += intrest;
  });
}

void upgraderesurces(){
  setState(() {
    intrest=intrest+surcesFromTree;
    resources=resources+intrest;
  });
  
}
  @override
  Widget build(BuildContext context) {

    data =ModalRoute.of(context).settings.arguments;
    print(data);

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
                       Navigator.pushReplacementNamed(context, '/ability_tree', arguments:{} );
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
                          height:60.0,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(2.0),
                        color: Colors.green[500],
                          child: Column(
                            children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Text(
                                    'Andrzej',
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
                           height:60.0,
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
                                '0',
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
                  height:320.0,
                  width: 320.0,

                  fit: BoxFit.cover, 
                  
                  ),
                  
             
                
              ),    
            ),
            
            
            
            
              
            
           Container(
               
              color: Colors.green[100],
              padding: EdgeInsets.all(5.0),
              
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                     Expanded(
                       flex:1,
                        child: Container(
                          height:90.0,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(2.0),
                        color: Colors.green[500],
                          child: Column(
                            children: <Widget>[
                             
                    
                        
                              ],
                          ),
                        ),
                      ),
                    
                   






                  ]
                ), 
            ), 
            
          ],  

          
        ),
        
        ), 
        
         
    );
    
  }

}