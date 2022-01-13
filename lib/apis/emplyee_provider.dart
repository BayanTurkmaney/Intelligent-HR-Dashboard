import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../models/employee.dart';
import 'package:http/http.dart' as http;

class EmployeeProvider with ChangeNotifier {
  EmployeeProvider() {
    this.fetchTasks();
    print('start fetching..');
  }

  List<Employee> _employee = [];

  List<Employee> get employee {
    return [..._employee];
  }

  Future GetData(url) async {
    http.Response response = await http.get(url);
    return response.body;
  }

  //_______________________________________________fetch task()_________________________________________________________

  fetchTasks() async {
    print('start fetching..');
    // final url = Uri.parse('http://192.168.1.77:8000/emps/?format=json');

    final url = Uri.parse('http://192.168.43.84:8000/emps/?format=json');
    // final url = Uri.parse('http://192.168.31.201:8000/emps/?format=json');
    final response = await http.get(
      url,
      // headers: {
      //   "Content-Type": "application/json",
      //   "Access-Control-Allow-Origin": "*",
      // },
    );

    if (response.statusCode == 200) {
      print('fetch accepted');
      var data = json.decode(response.body) as List;
      print(json.decode(response.body));
      _employee =
          data.map<Employee>((json) => Employee.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('error fetching..');
    }
  }

  //_______________________________________________sendemparray()_________________________________________________________

  Future<bool> sendEmpArray(Employee emp) async {
    //var url = Uri.parse('http://192.168.31.201:8000/emps/');

    Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    };
    var url = Uri.parse('http://192.168.43.84:8000/emps/getpred/');
    print("-----------------------------------------");
    print(emp.Department.toString());
    print(emp.Department);
    print("-----------------------------------------");

    final response = await http.post(
      url,
      body: json.encode({
        // "name": "Souad8",
        // "age": 45,
        // "email": "souadi8@sadir.com",
        // "password": "True",
        // "address": "rolePark",
        // "last_evaluation": 11,
        // "number_project": 1,
        // "average_montly_hours": 1,
        // "time_spend_company": 1,
        // "Work_accident": 1,
        // "left": 0.88,
        // "satisfiaction_level": 1,
        // "Department_IT":0,
        // "Department_RandD":0,
        // "Department_accounting":0,
        // "Department_hr":1,
        // "Department_management":0,
        // "Department_marketing":0,
        // "Department_product_mng":0,
        // "Department_sales":0,
        // "Department_support":0,
        // "Department_technical":0,
        // "salary_high":1,
        // "salary_low":0,
        // "salary_medium":0
        "name": emp.name,
        "age": emp.age.toString(),
        "email": emp.email,
        "password": emp.password,
        "address": emp.address,
        "last_evaluation": emp.last_evaluation.toString(),
        "number_project": emp.number_project.toString(),
        "average_montly_hours": emp.average_montly_hours.toString(),
        "time_spend_company": emp.time_spend_company.toString(),
        "Work_accident": emp.Work_accident.toString(),
        "left": emp.left.toString(),
        "satisfication_level": emp.satisfaction_level.toString(),
        "Department_IT": emp.Department.toString(),
        "Department_RandD": emp.Department.toString(),
        "Department_accounting": emp.Department.toString(),
        "Department_hr": emp.Department.toString(),
        "Department_management": emp.Department.toString(),
        "Department_marketing": emp.Department.toString(),
        "Department_product_mng": emp.Department.toString(),
        "Department_sales": emp.Department.toString(),
        "Department_support": emp.Department.toString(),
        "Department_technical": emp.Department.toString(),
        "salary_high": emp.salary.toString(),
        "salary_low": emp.salary.toString(),
        "salary_medium": emp.salary.toString(),
      }),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('end of addEmployee backend.........');
      print(json.decode(response.body)['result']);
      print(json.decode(response.body)['result']);
      notifyListeners();
      if (json.decode(response.body)['result'] == 0) {
        print("zerooooooooooooooooooooooooooooooo");
      } else {
        print("ouneeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
      }

      return json.decode(response.body)['result'];
    }
  }

  //_______________________________________________sendALLemparray()_________________________________________________________

  // Future<bool> sendAllEmpArray() async {
  //   // var url = Uri.parse('http://192.168.1.77:8000/emps/getallpred/');
  //   var url = Uri.parse('http://192.168.43.84:8000/emps/getpred/');
  //   final response = await http.post(
  //     url,
  //     // body: json.encode({emp}),
  //   );
  //   print(response.statusCode);
  //   if (response.statusCode == 200) {
  //     print('end of addEmployee backend.........');
  //     print(json.decode(response.body)['result']);
  //     print(json.decode(response.body)['result']);
  //     notifyListeners();
  //     if (json.decode(response.body)['result'].contain(1))
  //       return true;
  //     else
  //       return false;
  //   }
  // }
  //_______________________________________________addemp()_________________________________________________________

  Future<bool> addEmployee(Employee emp) async {
    print("start add employee from api..");
    print(emp.Department);

    var url = Uri.parse('http://192.168.43.84/emps/');
    //var url = Uri.parse('http://192.168.31.201:8000/emps/');

    final response = await http.post(url,
        headers: {"Content-Type": "application/json; charset=UTF-8"},
        body: json.encode({
          "name": emp.name.toString(),
          "photo_url": emp.photo.toString(),
          "age": emp.age.toString(),
          "email": emp.email.toString(),
          "password": emp.password.toString(),
          "address": emp.address.toString(),
          "satisfaction_level": emp.satisfaction_level,
          "last_evaluation": emp.last_evaluation,
          "number_project": emp.number_project,
          "average_montly_hours": emp.average_montly_hours,
          "time_spend_company": emp.time_spend_company,
          "Work_accident": emp.Work_accident,
          "left": emp.left,
          "Department": emp.Department.toString(),
          "salary": emp.salary
        }));

    print(response.statusCode);
    print('end of addEmployee backend.........');
    print(json.decode(response.body));

    if (response.statusCode == 200) {
      emp.id = json.decode(response.body)['id'];
      _employee.insert(0, emp);
      print('end of addEmployee backend.........');
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }
  //_______________________________________________deleteemp()_________________________________________________________

  void deleteEmployee(int id) async {
    //var url = Uri.parse('http://192.168.31.201:8000//emps/${id}/');
    var url = Uri.parse('http://192.168.43.84:8000/emps/${id}/');
    final index = _employee.indexWhere((element) => element.id == id);
    var el = _employee[index];
    _employee.removeAt(index);
    notifyListeners();
    final response = await http.delete(
      url,
      // headers: {
      //   "Content-Type": "application/json",
      //   "Access-Control-Allow-Origin": "*",
      // },
    );
    // if (response.statusCode == 200) {
    //   _employee.remove(emp);
    //   notifyListeners();
    // }
  }
  //_______________________________________________filters()_________________________________________________________

  List<Employee> getDepartment(String department) {
    List<Employee> empDepatment = [];
    _employee.forEach((element) {
      if (element.Department == department) {
        empDepatment.add(element);
      }
    });
    notifyListeners();
    return empDepatment;
  }

  List<Employee> getPromotion() {
    List<Employee> empPromotion = [];
    _employee.forEach((element) {
      if (element.promotion_last_5years == 1) {
        empPromotion.add(element);
      }
    });
    notifyListeners();
    print('proooooooooomo is');
    empPromotion.forEach((element) {
      print(element.name);
    });
    return empPromotion;
  }

  List<Employee> getMaxevaluation() {
    List<Employee> empMax = [];
    double max = 0.0;
    _employee.forEach((element) {
      if (element.last_evaluation > max) {
        max = element.last_evaluation;
        empMax.add(element);
      }
    });
    notifyListeners();
    return empMax;
  }

  List<Employee> getMinevaluation() {
    List<Employee> empMin = [];
    double min = 1000000.0;
    _employee.forEach((element) {
      if (element.last_evaluation < min) {
        min = element.last_evaluation;
        empMin.add(element);
      }
    });
    notifyListeners();
    return empMin;
  }

  List<Employee> getMaxTime() {
    List<Employee> empMax = [];

    int max = 0;

    _employee.forEach((element) {
      if (element.time_spend_company > max) {
        max = element.time_spend_company;
        empMax.add(element);
      }
    });
    notifyListeners();
    return empMax;
  }

  List<Employee> getMinTime() {
    List<Employee> empMin = [];

    int min = 100000000;

    _employee.forEach((element) {
      if (element.time_spend_company < min) {
        min = element.time_spend_company;
        empMin.add(element);
      }
    });
    notifyListeners();
    return empMin;
  }

  Employee findbyId(int id) {
    return _employee.firstWhere((emp) => emp.id == id, orElse: () => null);
  }
  //http://127.0.0.1:8000/emps/?format=json
}
