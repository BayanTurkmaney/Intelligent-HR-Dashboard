import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../dep_numproj.dart';
import '../dep_sal.dart';

class barChart extends StatelessWidget {
  final List<charts.Series<DepSalChart, String>> _seriesData;
  barChart(this._seriesData);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                'Salary vs Year',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.BarChart(
                  _seriesData,
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  barGroupingType: charts.BarGroupingType.grouped,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
