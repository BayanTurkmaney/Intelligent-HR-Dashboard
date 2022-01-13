import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/Charts/dep_hour.dart';
import '../Charts/dep_hour.dart';
//import '../Charts/parts/department_numprojects.dart';
import '../Charts/dep_numproj.dart';
import '../Charts/dep_numproj.dart';
import '../Charts/dep_sal.dart';
import '../widgets/navbar.dart';

class Help extends StatelessWidget {
  static final route = '/help';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: SizedBox(
            height: 1300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Container(
                      //color: Colors.white,
                      margin: EdgeInsets.only(top: 0.0),
                      child: Navbar(MediaQuery.of(context).size.height),
                      // height: MediaQuery.of(context).size.height,
                      // width: 5,
                    )),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    fit: FlexFit.tight,
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Have any probleme?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Type it here.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RaisedButton(
                          child: Text(
                            'send',
                          ),
                          textColor: Colors.white,
                          //color: Colors.grey[200],
                          elevation: 5,
                          //padding: EdgeInsets.only(left: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(
                              'assets/center.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                      ],
                    )),

                //)
                // Text('Flutter web app'),
              ],
            ),
          ),
        ),
      ),
      // )
      // Center(child: Text('Department page',style: TextStyle(fontSize: 50),),),
    );
  }
}
