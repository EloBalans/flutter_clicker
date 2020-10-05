import 'package:flutter/material.dart';

class ability_tree extends StatefulWidget {
  @override
  _ability_treeState createState() => _ability_treeState();
}

class _ability_treeState extends State<ability_tree> {
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
      child:Column( 
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex:7,
              child: Container(
              color: Colors.red[300],
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
                                    'Amenzia Haze ',
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

                                  IconButton(
                                    icon: Icon(Icons.update),
                                    color: Colors.white,
                                    onPressed: () {} 
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