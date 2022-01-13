import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'ch/Piechart.dart';

class DepartmentNumProjectCharts extends StatefulWidget {
  @override
  _DepartmentNumProjectChartsState createState() =>
      _DepartmentNumProjectChartsState();
}

class _DepartmentNumProjectChartsState
    extends State<DepartmentNumProjectCharts> {
  List<charts.Series<DepartmentNumProjectChartsClass, String>> _seriesData;
  _generateData() {
    var pieData = [
      new DepartmentNumProjectChartsClass(
          department: 'IT', numOfProjects: 40, colorVal: Color(0xff3366cc)),
      new DepartmentNumProjectChartsClass(
          department: 'Accounting',
          numOfProjects: 10,
          colorVal: Color(0xff990099)),
      new DepartmentNumProjectChartsClass(
          department: 'HR', numOfProjects: 20, colorVal: Color(0xff109618)),
      new DepartmentNumProjectChartsClass(
          department: 'Management',
          numOfProjects: 5,
          colorVal: Color(0xff3366cc)),
      new DepartmentNumProjectChartsClass(
          department: 'Marketing',
          numOfProjects: 10,
          colorVal: Color(0xffff9900)),
      new DepartmentNumProjectChartsClass(
          department: 'Sales', numOfProjects: 5, colorVal: Color(0xffdc3912)),
      new DepartmentNumProjectChartsClass(
          department: 'Technical',
          numOfProjects: 10,
          colorVal: Color(0xff336581)),
      new DepartmentNumProjectChartsClass(
          department: 'RandD', numOfProjects: 5, colorVal: Color(0xff33ee66)),
    ];
    _seriesData.add(
      charts.Series(
        data: pieData,
        domainFn: (DepartmentNumProjectChartsClass x, _) => x.department,
        measureFn: (DepartmentNumProjectChartsClass x, _) => x.numOfProjects,
        colorFn: (DepartmentNumProjectChartsClass x, _) =>
            charts.ColorUtil.fromDartColor(x.colorVal),
        id: 'Projects in Departments',
        labelAccessorFn: (DepartmentNumProjectChartsClass row, _) =>
            '${row.numOfProjects}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesData =
        List<charts.Series<DepartmentNumProjectChartsClass, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
        height: 650,
        width: 500,
        color: Colors.grey[10],
        child: Center(
          child: pieCharts(_seriesData),
        ),
      ),
    );
  }
}

class DepartmentNumProjectChartsClass {
  String department;
  double numOfProjects;
  Color colorVal;
  DepartmentNumProjectChartsClass(
      {this.colorVal, this.department, this.numOfProjects});
}
