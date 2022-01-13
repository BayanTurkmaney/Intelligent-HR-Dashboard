import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/Charts/dep_hour.dart';
import 'package:flutter_web_app/widgets/circularSatisfication.dart';
import '../Charts/dep_hour.dart';
//import '../Charts/parts/department_numprojects.dart';
import '../Charts/dep_numproj.dart';
import '../Charts/dep_sal.dart';
import '../Charts/dep_numproj.dart';
import '../constants.dart';
import '../widgets/navbar.dart';

class Depatrments extends StatelessWidget {
  static final route = '/departments';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: color3,
        // actions: [],
        //toolbarOpacity: 0.2,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: SizedBox(
            height: 2000,
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
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: DepartmentNumProjectCharts(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            // child: Padding(
                            //   padding: EdgeInsets.all(10),
                            fit: FlexFit.tight,
                            flex: 2,
                            child: DepartmentSalaryChart(),
                          ),
                        ],
                      ),
                      //********************************** new Widget *******************************************************/
                      DepatmentHoursChart(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
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
// //****************************************************************************************
// import 'package:flutter/material.dart';

// class Depatrments extends StatelessWidget {
//   static final route = '/departments';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Text(
//         'hi',
//         style: TextStyle(fontSize: 60),
//       ),
//     );
//   }
// }
