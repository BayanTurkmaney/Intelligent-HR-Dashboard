import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_web_app/Charts/ch/linechart.dart';
import 'ch/bar_chart.dart';

class DepatmentHoursChart extends StatefulWidget {
  @override
  _DepatmentHoursChartState createState() => _DepatmentHoursChartState();
}

class _DepatmentHoursChartState extends State<DepatmentHoursChart> {
  List<charts.Series<DepartmentHoursClass, int>> _seriesData;
  _generateData() {
    var linehours0 = [
      new DepartmentHoursClass(
        hours: 19,
        month: 1,
      ),
      new DepartmentHoursClass(
        hours: 19,
        month: 2,
      ),
      new DepartmentHoursClass(
        hours: 9,
        month: 3,
      ),
      new DepartmentHoursClass(
        hours: 15,
        month: 4,
      ),
      new DepartmentHoursClass(
        hours: 5,
        month: 5,
      ),
      new DepartmentHoursClass(
        hours: 8,
        month: 6,
      ),
    ];
    var linehours1 = [
      new DepartmentHoursClass(
        hours: 23,
        month: 1,
      ),
      new DepartmentHoursClass(
        hours: 19,
        month: 2,
      ),
      new DepartmentHoursClass(
        hours: 15,
        month: 3,
      ),
      new DepartmentHoursClass(
        hours: 5,
        month: 4,
      ),
      new DepartmentHoursClass(
        hours: 6,
        month: 5,
      ),
      new DepartmentHoursClass(
        hours: 18,
        month: 6,
      ),
    ];
    var linehours2 = [
      new DepartmentHoursClass(
        hours: 10,
        month: 1,
      ),
      new DepartmentHoursClass(
        hours: 29,
        month: 2,
      ),
      new DepartmentHoursClass(
        hours: 19,
        month: 3,
      ),
      new DepartmentHoursClass(
        hours: 9,
        month: 4,
      ),
      new DepartmentHoursClass(
        hours: 3,
        month: 5,
      ),
      new DepartmentHoursClass(
        hours: 2,
        month: 6,
      ),
    ];

    _seriesData.add(charts.Series(
        domainFn: (DepartmentHoursClass x, _) => x.month,
        measureFn: (DepartmentHoursClass x, _) => x.hours,
        data: linehours0,
        id: 'hours',
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099))));
    _seriesData.add(charts.Series(
        domainFn: (DepartmentHoursClass x, _) => x.month,
        measureFn: (DepartmentHoursClass x, _) => x.hours,
        data: linehours1,
        id: 'hours',
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618))));
    _seriesData.add(charts.Series(
        domainFn: (DepartmentHoursClass x, _) => x.month,
        measureFn: (DepartmentHoursClass x, _) => x.hours,
        data: linehours2,
        id: 'hours',
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900))));
  }

  @override
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<DepartmentHoursClass, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey[10],
      child: Container(
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
        height: 500,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[10],
        child: Center(
          child: LinearChart(_seriesData),
        ),
      ),
    );
  }
}

class DepartmentHoursClass {
  int hours;
  int month;
  DepartmentHoursClass({this.hours, this.month});
}
