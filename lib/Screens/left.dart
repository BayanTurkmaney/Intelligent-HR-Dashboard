import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/circularSatisfication.dart';
import '../apis/emplyee_provider.dart';

class Left extends StatelessWidget {
  static final route = '/left';
  // String url = 'http://127.0.0.1:8000/apis?x' + value.toString();
  // var data;
  // String predLeft = '';
  // Future<String> predictLeft() async {
  //   data = await GetData(url);
  //   var decodedData = jsonDecode(data);
  //   predLeft = decodedData['x'];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircSatisfy(),
      // Center(child: Text('left screen'))
    );
  }
}
