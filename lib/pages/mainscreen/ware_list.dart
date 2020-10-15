import "package:flutter/material.dart";
import 'package:game_01/models/ware.dart';
import "package:provider/provider.dart";

class WareList extends StatefulWidget {
  @override
  _WareListState createState() => _WareListState();
}

class _WareListState extends State<WareList> {
  @override
  Widget build(BuildContext context) {

    final ware = Provider.of<List<Ware>>(context);
    

    
  }
}