import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = json.decode(response.body);
    print(data);
    print(data['userId']);
  }
 
  void initState(){
    super.initState();
    getData();
    print('uś');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}