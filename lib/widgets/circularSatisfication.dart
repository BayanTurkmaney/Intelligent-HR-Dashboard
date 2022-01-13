import 'package:flutter/material.dart';

class CircSatisfy extends StatelessWidget {
  const CircSatisfy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: Text(
              'Satisfication',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 0.75),
              duration: Duration(seconds: 10),
              builder: (context, value, _) => SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey[100],
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xffF25767)),
                      strokeWidth: 15,
                    ),
                  ))
        ],
      ),
    );
  }
}
