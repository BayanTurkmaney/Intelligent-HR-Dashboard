import 'package:flutter/cupertino.dart';

class Employee {
  int id;
  final String name;
  final int age;
  final String address;
  final String email;
  final String password;
  final String Department;
  final int salary;
  final bool left;
  final double satisfaction_level;
  final int number_project;
  final int average_montly_hours;
  final double last_evaluation;
  final int time_spend_company;
  final int Work_accident;
  final int promotion_last_5years;
  final String photo;

  Employee({
    this.id,
    this.photo,
    this.name,
    this.age,
    this.address,
    this.email,
    this.password,
    this.Department,
    this.salary,
    this.left,
    this.satisfaction_level,
    this.number_project,
    this.average_montly_hours,
    this.last_evaluation,
    this.time_spend_company,
    this.Work_accident,
    this.promotion_last_5years,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      photo: json['photo'],
      name: json['name'],
      age: json['age'],
      address: json['address'],
      email: json['email'],
      password: json['password'],
      Department: json['Department'],
      salary: json['salary'],
      left: json['left'],
      satisfaction_level: json['satisfaction_level'],
      number_project: json['number_project'],
      average_montly_hours: json['average_montly_hours'],
      last_evaluation: json['last_evaluation'],
      time_spend_company: json['time_spend_company'],
      Work_accident: json['Work_accident'],
      promotion_last_5years: json['promotion_last_5years'],
    );
  }

  Map<String, String> toMap() {
    return {
      'id': id.toString(),
      'name': name,
      'age': age.toString(),
      'email': email,
      'Department': Department,
      'address': address,
      'password': password,
      'salary': salary.toString(),
      'left': left.toString(),
      'satisfaction_level': satisfaction_level.toString(),
      'number_project': number_project.toString(),
      'average_montly_hours': average_montly_hours.toString(),
      'last_evaluation': last_evaluation.toString(),
      'time_spend_company': time_spend_company.toString(),
      'Work_accident': Work_accident.toString(),
      'promotion_last_5years': promotion_last_5years.toString(),
      'photo': photo,
    };
  }
}
// id:,
//   name:,
//   age:,
//   address:,
//   email:,
//   password:,
//   Department:,
//   salary,
//   left:,
//   satisfaction_level,
//   number_project,
//   average_montly_hours,
//   last_evaluation,
//   time_spend_company,
//   Work_accident,
//   promotion_last_5years,
