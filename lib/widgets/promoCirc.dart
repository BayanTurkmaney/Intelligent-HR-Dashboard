import 'package:flutter/material.dart';

class PromoCirc extends StatelessWidget {
  const PromoCirc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1),
              duration: Duration(seconds: 10),
              builder: (context, value, _) => SizedBox(
                    width: 300,
                    height: 300,
                    child: CircularProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey[100],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      strokeWidth: 20,
                    ),
                  ))
        ],
      ),
    );
  }
}
