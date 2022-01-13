import 'package:flutter/material.dart';
import 'package:flutter_web_app/apis/emplyee_provider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class EmployeeDetail extends StatelessWidget {
  static const route = '/employee-detail';
  Widget items(String text, dynamic val) {
    return Expanded(
        // height: 25,
        // width: 80,
        child: Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        Text(
          val,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as int;
    final empId = id;
    final emp = Provider.of<EmployeeProvider>(context);
    final p = Provider.of<EmployeeProvider>(context).findbyId(id);
    //print(p.photo.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Color(0xffF25767),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //child: Text('${p.id}'),
          padding: EdgeInsets.all(50),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Card(
                elevation: 80.0,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          radius: 45,
                          child: FittedBox(
                            child: Image(
                              image: NetworkImage(p.photo),
                            ),
                            fit: BoxFit.contain,
                          ),

                          //fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          p.name,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Divider(
                          // height: 2.0,
                          // color: Color(0xffF25767),
                          color: Colors.blueGrey,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            items('id :', '${p.id}'),
                            items('name :', p.name),
                            items('email :', '${p.email}'),
                            items('address :', p.address),
                            items('age :', '${p.age}'),
                            items('salary :', '${p.salary}'),
                            items('left :', '${p.left}'),
                            items('promotion_last_5years :',
                                '${p.promotion_last_5years}'),
                            items('Work_accident :', '${p.Work_accident}'),
                            items('number_project :', '${p.number_project}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ################################################################33
// import 'package:flutter/material.dart';
// import 'package:flutter_web_app/apis/emplyee_provider.dart';

// import 'package:provider/provider.dart';

// class EmployeeDetail extends StatelessWidget {
//   static const route = '/employee-detail';
//   Widget items(String text, dynamic val) {
//     return SizedBox(
//         height: 10,
//         width: 40,
//         child: Row(
//           children: [
//             Text(text),
//             Text(val),
//           ],
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final id = ModalRoute.of(context).settings.arguments as int;
//     final empId = id;
//     final p = Provider.of<EmployeeProvider>(context).findbyId(id);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           //child: Text('${p.id}'),
//           child: Column(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.grey,
//                 radius: 30,
//                 child: Padding(
//                   padding: EdgeInsets.all(10),
//                   child: FittedBox(
//                     //child: Text('photo'),
//                     child: Image(
//                       image: NetworkImage(
//                           "http://127.0.0.1:8000/media/upload/no_person.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Divider(
//                   height: 5,
//                   color: Colors.blueGrey,
//                   thickness: 2,
//                 ),
//               ),
//               SizedBox(
//                 height: 400,
//                 width: 200,
//                 child: Column(
//                   children: [
//                     items('id', '${p.id}'),
//                     items('name', p.name),
//                     items('email', '${p.email}'),
//                     items('address', p.address),
//                     items('age', '${p.age}'),
//                     items('salary', '${p.salary}'),
//                     items('left', '${p.left}'),
//                     items(
//                         'promotion_last_5years', '${p.promotion_last_5years}'),
//                     items('Work_accident', '${p.Work_accident}'),
//                     items('number_project', '${p.number_project}'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
