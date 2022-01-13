import 'dart:convert';

//import '../Screens/employee_detail.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/Screens/promoEmps.dart';
import '../apis/emplyee_provider.dart';
import 'package:provider/provider.dart';
import '../Screens/addEmployeeScreen.dart';
import 'employee_detail.dart';
import '../widgets/constants.dart';

class Promotion extends StatefulWidget {
  static final route = '/promotion';

  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    // var emp = Provider.of<EmployeeProvider>(context, listen: false).employee;

    var emp = Provider.of<EmployeeProvider>(context, listen: true).employee;
    final prEmp =
        Provider.of<EmployeeProvider>(context, listen: false).getPromotion();
    if (_isClicked) {
      emp = prEmp;
      emp.forEach((element) {
        print(element.Department +
            " where promo is: " +
            element.promotion_last_5years.toString());
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Promotions'),
        backgroundColor: color3,
        // actions: [],
        //toolbarOpacity: 0.2,
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: RaisedButton(
                child: Text(
                  'Check Promotions',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pink,
                onPressed: () {
                  // Provider.of<EmployeeProvider>(context, listen: false).getPromotion();
                  setState(() {
                    _isClicked = !_isClicked;
                    print("isClicked is :" + _isClicked.toString());
                  });
                },
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Flexible(
            flex: 4,
            child: _isClicked
                ? Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed(
                                  EmployeeDetail.route,
                                  arguments: emp[index].id);
                            },
                            child: Container(
                              height: 200,
                              width: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Card(
                                  elevation: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 35),
                                    child: Center(
                                      child: ListTile(
                                        title: Text(
                                          emp[index].name,
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        leading: Container(
                                          height: 200,
                                          width: 200,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            radius: 100,
                                            child: SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.grey[100],
                                                radius: 45,
                                                child: FittedBox(
                                                  child: Image(
                                                    image: NetworkImage(
                                                        emp[index].photo),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),

                                                //fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        trailing: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: RaisedButton(
                                            child: Text(
                                              'edit',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  AddEmployeeScreen.route);
                                            },
                                            color: Colors.green,
                                          ),
                                          // IconButton(
                                          //   icon: Icon(Icons.edit),
                                          //   onPressed: () {
                                          //     Navigator.pushNamed(context,
                                          //         AddEmployeeScreen.route);
                                          //   },
                                          //   color: Colors.green,
                                          // ),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text('id is ' +
                                                emp[index].id.toString()),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text('work in department ' +
                                                emp[index].Department),
                                            SizedBox(
                                              height: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: emp.length,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 450),
                    child: Container(
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.asset(
                          'assets/waiting.png',
                          width: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
