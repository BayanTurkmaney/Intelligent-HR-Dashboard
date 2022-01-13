import 'package:flutter/material.dart';
import 'package:flutter_web_app/apis/emplyee_provider.dart';
import 'package:flutter_web_app/models/employee.dart';
import 'package:provider/provider.dart';

class AddEmployeeScreen extends StatefulWidget {
  static const route = '/add-employee';
  @override
  _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final imageController = TextEditingController();
  final departmentController = TextEditingController();
  final addressController = TextEditingController();
  final satisfaction_levelController = TextEditingController();
  final last_evaluationController = TextEditingController();
  final number_projectController = TextEditingController();
  final average_montly_hoursController = TextEditingController();
  final time_spend_companyController = TextEditingController();
  final work_accidentController = TextEditingController();
  final leftController = TextEditingController();
  final promotion_last_5yearsController = TextEditingController();
  final salaryController = TextEditingController();

  Map<String, String> _data = {};
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget textfield(String text, dynamic x, dynamic x2, String labeltext) {
    return SizedBox(
      height: 120,
      width: 750,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 150,
            //child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 100,
            width: 500,
            child: TextFormField(
              controller: x2,
              onSaved: (newValue) => x = newValue,
              validator: (value) {
                if (value.isEmpty && text != 'image :')
                  return 'Please Enter Your $text and $value ';
                return null;
              },
              autocorrect: true,
              decoration: InputDecoration(
                // hintText: labeltext,
                labelText: labeltext,
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onAdd() async {}

  @override
  Widget build(BuildContext context) {
    String nameVal;
    final String emailVal = emailController.text;
    final String passwordVal = passwordController.text;
    final String ageVal = ageController.text;
    final String imageVal = imageController.text;
    final String departVal = departmentController.text;

    final String addressVal = addressController.text;
    final String satisfaction_levelVal = satisfaction_levelController.text;
    final String last_evaluation = last_evaluationController.text;
    final String number_projectVal = number_projectController.text;
    final String average_montly_hoursVal = average_montly_hoursController.text;
    final String time_spend_companyVal = time_spend_companyController.text;
    final String work_accidentVal = work_accidentController.text;
    final String leftVal = leftController.text;
    final String promotion_last_5yearsVal = promotion_last_5yearsController.text;
    final String salaryVal = salaryController.text;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
        backgroundColor: Color(0xffF25767),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Please Enter The Complete Information Of Employee: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // textfield('id :', idController, 'Enter id'),
                // SizedBox(
                //   height: 5,
                // ),
                textfield('name :', nameVal, nameController, 'Enter Your name'),
                SizedBox(
                  height: 5,
                ),
                textfield('email :', emailVal, emailController, 'Enter Your Email'),
                SizedBox(
                  height: 5,
                ),
                textfield('password :', passwordVal, passwordController, 'Enter Your Password'),
                SizedBox(
                  height: 5,
                ),
                textfield('address :', addressVal, addressController, 'Enter Your Address'),
                SizedBox(
                  height: 5,
                ),
                textfield('last_evaluation :', last_evaluation, last_evaluationController, 'Enter Your Address'),
                SizedBox(
                  height: 5,
                ),
                textfield('satis_level :', satisfaction_levelVal, satisfaction_levelController, 'Enter Your Address'),
                SizedBox(
                  height: 5,
                ),
                textfield('age :', ageVal, ageController, 'Enter Your Age'),
                SizedBox(
                  height: 5,
                ),
                textfield('image :', imageVal, imageController, 'Enter URL'),
                SizedBox(
                  height: 5,
                ),
                textfield('salary :', salaryVal, salaryController, 'Enter Your Salary'),
                SizedBox(
                  height: 10,
                ),
                textfield('number_project :', number_projectVal, number_projectController,
                    'Enter Number of projects'),
                SizedBox(
                  height: 10,
                ),
                textfield('promotion_last_5years :', promotion_last_5yearsVal, promotion_last_5yearsController,
                    'Enter Pormotion'),
                SizedBox(
                  height: 10,
                ),
                textfield('average_montly_hours', average_montly_hoursVal, average_montly_hoursController,
                    'Average Montly Hours'),
                SizedBox(
                  height: 10,
                ),
                textfield('time_spend_companyVal', time_spend_companyVal, time_spend_companyController,
                    'Average Montly Hours'),
                SizedBox(
                  height: 10,
                ),
                textfield('left :', leftVal, leftController, 'Left 0 else 1'),
                SizedBox(
                  height: 10,
                ),
                textfield('department :', departVal, departmentController, 'department'),
                SizedBox(
                  height: 10,
                ),
                textfield('work_accident :', work_accidentVal, work_accidentController, 'work accident'),
                SizedBox(
                  height: 10,
                ),

                //TextField(controller: nameController,)
                RaisedButton(
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    final String nameVal = nameController.text;
                    final String emailVal = emailController.text;
                    final String passwordVal = passwordController.text;
                    final String ageVal = ageController.text;
                    final String imageVal = imageController.text;
                    final String departVal = departmentController.text;

                    final String addressVal = addressController.text;
                    final String satisfaction_levelVal =
                        satisfaction_levelController.text;
                    final String last_evaluation = last_evaluationController.text;
                    final String number_projectVal =
                        number_projectController.text;
                    final String average_montly_hoursVal =
                        average_montly_hoursController.text;
                    final String time_spend_companyVal =
                        time_spend_companyController.text;
                    final String work_accidentVal =
                        work_accidentController.text;
                    final String leftVal = leftController.text;
                    final String   promotion_last_5yearsVal =
                        promotion_last_5yearsController.text;
                    final String salaryVal = salaryController.text;
                    print(nameVal.isEmpty);
                    print(nameVal.toString());
                    if (nameVal.isEmpty == false) {
                      print('on Add execute now.....');
                      //  print(_formKey.toString());
                      print('nameVaaaaaaaaaaaaaal');
                      //print(emailVal);
                      //print(passwordVal);
                      // print(_data['email']);
                      // print(_data['satisfaction_level']);
                      // print(_data['number_project']);
                      // print(_data['average_montly_hours']);
                      // print(int.parse(_data['salary']));
                      // print(_data['Work_accident']);
                      // print(_data['time_spend_company']);
                      // print(_data['promotion_last_5years']);
                      // print(_data['time_spend_company']);

                      final Employee employee = Employee(
                        id:0,
                        name: nameVal,
                        email: emailVal,
                        Department: departVal,
                        age: int.parse(ageVal),
                        password: passwordVal,
                        address: addressVal,
                        satisfaction_level: double.parse(satisfaction_levelVal),
                        last_evaluation: double.parse(last_evaluation),
                        number_project: int.parse(number_projectVal),
                        average_montly_hours: int.parse(average_montly_hoursVal),
                        time_spend_company: int.parse(time_spend_companyVal),
                        Work_accident: int.parse(work_accidentVal),
                        left: leftVal.toLowerCase() == 'false',
                        promotion_last_5years: int.parse(promotion_last_5yearsVal),
                        salary: int.parse(salaryVal),
                        photo: imageVal,
                      );
                      print('*****************************************');
                      Provider.of<EmployeeProvider>(context, listen: false).addEmployee(employee);
                      // if (r) {
                      //   print('on Add finished.....');
                      //   Navigator.of(context).pop();
                      // } else {
                      //   print("Something went wrong.");
                      // }
                    }
                  },
                  child: Text('Add Employee'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//#########################################################################3
// import 'package:flutter/material.dart';
// import 'package:flutter_web_app/apis/emplyee_provider.dart';
// import 'package:flutter_web_app/models/employee.dart';
// import 'package:provider/provider.dart';

// class AddEmployeeScreen extends StatefulWidget {
//   static const route = '/add-employee';
//   @override
//   _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
// }

// class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
//   final idController = TextEditingController();
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final ageController = TextEditingController();
//   final imageController = TextEditingController();
//   final departmentController = TextEditingController();
//   final addressController = TextEditingController();
//   final satisfaction_levelController = TextEditingController();
//   final number_projectController = TextEditingController();
//   final average_montly_hoursController = TextEditingController();
//   final time_spend_companyController = TextEditingController();
//   final work_accidentController = TextEditingController();
//   final leftController = TextEditingController();
//   final promotion_last_5yearsController = TextEditingController();
//   final salaryController = TextEditingController();

//   Widget textfield(
//       String text, TextEditingController controller, String labeltext) {
//     return SizedBox(
//       height: 120,
//       width: 750,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         //mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Container(
//               height: 100,
//               width: 150,
//               //child: Center(
//               child: Text(
//                 text,
//                 style: TextStyle(fontSize: 20),
//                 textAlign: TextAlign.center,
//               )
//               //)
//               ),
//           SizedBox(
//             height: 100,
//             width: 500,
//             child: TextField(
//               controller: controller,
//               autocorrect: true,
//               decoration: InputDecoration(
//                 // hintText: labeltext,
//                 labelText: labeltext,
//                 hintStyle: TextStyle(color: Colors.grey),
//                 filled: true,
//                 fillColor: Colors.white70,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                   borderSide: BorderSide(color: Colors.grey, width: 2),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                   borderSide: BorderSide(color: Colors.blueGrey),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void onAdd() {
//     final String idVal = idController.text;
//     final String nameVal = nameController.text;
//     final String emailVal = emailController.text;
//     final String passwordVal = passwordController.text;
//     final String ageVal = ageController.text;
//     final String imageVal = imageController.text;
//     final String departVal = departmentController.text;

//     final String addressVal = addressController.text;
//     final String satisfaction_levelVal = satisfaction_levelController.text;
//     final String number_projectVal = number_projectController.text;
//     final String average_montly_hoursVal = average_montly_hoursController.text;
//     final String time_spend_companyVal = time_spend_companyController.text;
//     final String work_accidentVal = work_accidentController.text;
//     final String leftVal = leftController.text;
//     final String promotion_last_5yearsVal =
//         promotion_last_5yearsController.text;
//     final String salaryVal = salaryController.text;

//     if (idVal.isNotEmpty &&
//         nameVal.isNotEmpty &&
//         emailVal.isNotEmpty &&
//         departVal.isNotEmpty &&
//         ageVal.isNotEmpty &&
//         passwordVal.isNotEmpty &&
//         addressVal.isNotEmpty &&
//         satisfaction_levelVal.isNotEmpty &&
//         number_projectVal.isNotEmpty &&
//         average_montly_hoursVal.isNotEmpty &&
//         time_spend_companyVal.isNotEmpty &&
//         work_accidentVal.isNotEmpty &&
//         leftVal.isNotEmpty &&
//         promotion_last_5yearsVal.isNotEmpty &&
//         salaryVal.isNotEmpty) {
//       final Employee employee = Employee(
//         id: int.parse(idVal),
//         name: nameVal,
//         email: emailVal,
//         Department: departVal,
//         age: int.parse(ageVal),
//         password: passwordVal,
//         address: addressVal,
//         satisfaction_level: int.parse(satisfaction_levelVal),
//         number_project: int.parse(number_projectVal),
//         average_montly_hours: int.parse(average_montly_hoursVal),
//         time_spend_company: int.parse(time_spend_companyVal),
//         Work_accident: int.parse(work_accidentVal),
//         left: leftVal.toLowerCase() == 'false',
//         promotion_last_5years: int.parse(promotion_last_5yearsVal),
//         salary: int.parse(salaryVal),
//       );
//       Provider.of<EmployeeProvider>(context, listen: false)
//           .addEmployee(employee);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Add Employee'),
//           backgroundColor: Color(0xffF25767),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.only(left: 20, top: 50),
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   'Please Enter The Complete Information Of Employee: ',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('id :', idController, 'Enter id'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('name :', nameController, 'Enter Your Name'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('email :', emailController, 'Enter Your Email'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield(
//                     'password :', passwordController, 'Enter Your Password'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('address :', addressController, 'Enter Your Address'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('age :', ageController, 'Enter Your Age'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('url of your image :', imageController, 'Enter URL'),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 textfield('salary :', salaryController, 'Enter Your Salary'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('number_project :', number_projectController,
//                     'Enter Number of projects'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('promotion_last_5years :',
//                     promotion_last_5yearsController, 'Enter Pormotion'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('average_montly_hours',
//                     average_montly_hoursController, 'Average Montly Hours'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('left :', leftController, 'Left 0 else 1'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield('work_accident :', work_accidentController,
//                     'work accident'),
//                 SizedBox(
//                   height: 10,
//                 ),

//                 //TextField(controller: nameController,)
//                 RaisedButton(
//                   onPressed: () {
//                     onAdd();
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('Add Employee'),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
