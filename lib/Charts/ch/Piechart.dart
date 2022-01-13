import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../dep_numproj.dart';

class pieCharts extends StatelessWidget {
  final List<charts.Series<DepartmentNumProjectChartsClass, String>>
      _seriesData;
  pieCharts(this._seriesData);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                'num of projects spent on dpartments',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.PieChart(
                  _seriesData,
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  behaviors: [
                    new charts.DatumLegend(
                      outsideJustification:
                          charts.OutsideJustification.endDrawArea,
                      horizontalFirst: false,
                      desiredMaxRows: 2,
                      cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                      entryTextStyle: charts.TextStyleSpec(
                          color: charts.MaterialPalette.purple.shadeDefault,
                          fontFamily: 'Georgia',
                          fontSize: 11),
                    )
                  ],
                  defaultRenderer: new charts.ArcRendererConfig(
                      arcWidth: 100,
                      arcRendererDecorators: [
                        new charts.ArcLabelDecorator(
                            labelPosition: charts.ArcLabelPosition.inside),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
