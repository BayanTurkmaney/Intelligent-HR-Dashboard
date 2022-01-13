import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  static final route='/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: Text('Settings page',style: TextStyle(fontSize: 50),),),);
  }
}
