import 'package:flutter/material.dart';
import 'package:game_01/services/auth.dart';
import 'package:game_01/shared/loading.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

final AuthService _auth = AuthService();
final _formKey = GlobalKey<FormState>();
bool loading = false;

String email = '';
String password = '';
String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: AppBar(
        backgroundColor: Colors.green,
         title:
                    Column( 
            
        
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
                            'SIGNIN',
                            style: TextStyle(
                              letterSpacing:2.0,
                              fontSize: 12.0,
                            ),
                          ),
                          
                        ],
                    ),
         
        
          leading: Builder(
    builder: (BuildContext context) {
      return Container(
// deleting back icon in appbar
      );
    }
  ),
         
                  ),
      body:Center(
              child: Column(
          children: <Widget>[
            Image(
                    image: AssetImage('assets/cannabisspot_icon.png'),
                    height: 100.0,
                    width: 100.0,
                    
                    
                    ),
                Container(
                  
                margin: EdgeInsets.fromLTRB(25.0,0.0,25.0,25.0),
                decoration: BoxDecoration(
                  border: Border(),
                  borderRadius: BorderRadius.circular(20),
                  ),
            
            child: Form(
              key:_formKey,
              child: Column(
                children: <Widget>[

                  TextFormField(
                    decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email',
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)
                            ),
                          ),

                   validator: (val) => val.isEmpty ? 'Enter an email' : null,

                    onChanged: (val){
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)
                            ),
                          ),
                    obscureText: true,
                   validator: (val) => val.isEmpty ? 'Enter an password' : null,
                    onChanged: (val){
                      
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(
                    color:Colors.green,

                    child: Text('Sign in',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        setState(() => loading = true);
                        dynamic result = await _auth.signIn(email.trim(), password.trim());
                        if(result == null){
                          setState(() {
                          error = 'could not sign in';
                          loading = false;
                          });
                        }
                      }
                    }
                    ),
                    FlatButton.icon(
                      onPressed: (){
                         widget.toggleView();
                      },
                      icon: Icon(Icons.person), 
                      label: Text('Register')),
                      SizedBox(height: 12.0),
                          Text(
                            error,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 13.0, 
                              ),
                          ), 
                      
                ],
                )
            )
          ),
          ],
        ),
      )
      
    );
  }
}