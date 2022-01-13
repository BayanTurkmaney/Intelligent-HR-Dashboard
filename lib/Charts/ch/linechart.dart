import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../dep_hour.dart';

class LinearChart extends StatelessWidget {
  final List<charts.Series<DepartmentHoursClass, int>> _seriesData;
  LinearChart(this._seriesData);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Text(
                'Hours vs Months on dpartments',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.LineChart(
                  _seriesData,
                  animate: true,
                  animationDuration: Duration(seconds: 25),
                  defaultRenderer: new charts.LineRendererConfig(
                      includeArea: true, stacked: true),
                  behaviors: [
                    new charts.ChartTitle('more actively',
                        behaviorPosition: charts.BehaviorPosition.bottom,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                    new charts.ChartTitle('hours',
                        behaviorPosition: charts.BehaviorPosition.start,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                    new charts.ChartTitle('Departments',
                        behaviorPosition: charts.BehaviorPosition.end,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
