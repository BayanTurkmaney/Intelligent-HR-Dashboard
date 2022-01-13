import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'ch/bar_chart.dart';

class DepartmentSalaryChart extends StatefulWidget {
  @override
  _DepartmentSalaryChartState createState() => _DepartmentSalaryChartState();
}

class _DepartmentSalaryChartState extends State<DepartmentSalaryChart> {
  List<charts.Series<DepSalChart, String>> _seriesData;
  _generateData() {
    var data1 = [
      new DepSalChart(department: 'IT', year: 2015, salary: 900000.0),
      new DepSalChart(department: 'HR', year: 2015, salary: 300000.0),
      new DepSalChart(department: 'Accounting', year: 2015, salary: 700000.0),
    ];
    var data2 = [
      new DepSalChart(department: 'IT', year: 2016, salary: 500000.0),
      new DepSalChart(department: 'HR', year: 2016, salary: 200000.0),
      new DepSalChart(department: 'Accounting', year: 2016, salary: 100000.0),
    ];
    var data3 = [
      new DepSalChart(department: 'IT', year: 2017, salary: 200000.0),
      new DepSalChart(department: 'HR', year: 2017, salary: 600000.0),
      new DepSalChart(department: 'Accounting', year: 2017, salary: 800000.0),
    ];

    _seriesData.add(
      charts.Series(
          domainFn: (DepSalChart x, _) => x.department,
          measureFn: (DepSalChart x, _) => x.salary,
          data: data1,
          id: '1',
          fillPatternFn: (_, __) => charts.FillPatternType.solid,
          fillColorFn: (DepSalChart x, _) =>
              charts.ColorUtil.fromDartColor(Color(0xff990099))),
    );

    _seriesData.add(
      charts.Series(
          domainFn: (DepSalChart x, _) => x.department,
          measureFn: (DepSalChart x, _) => x.salary,
          data: data2,
          id: '2',
          fillPatternFn: (_, __) => charts.FillPatternType.solid,
          fillColorFn: (DepSalChart x, _) =>
              charts.ColorUtil.fromDartColor(Color(0xffff9900))),
    );

    _seriesData.add(
      charts.Series(
          domainFn: (DepSalChart x, _) => x.department,
          measureFn: (DepSalChart x, _) => x.salary,
          data: data3,
          id: '3',
          fillPatternFn: (_, __) => charts.FillPatternType.solid,
          fillColorFn: (DepSalChart x, _) =>
              charts.ColorUtil.fromDartColor(Color(0xff33ee66))),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<DepSalChart, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        margin: EdgeInsets.fromLTRB(8.0, 1.0, 0.0, 8.0),
        height: 650,
        width: 500,
        color: Colors.white,
        child: Center(
          child: barChart(_seriesData),
        ),
      ),
    );
  }
}

class DepSalChart {
  int year;
  double salary;
  String department;
  DepSalChart({this.department, this.year, this.salary});
}
