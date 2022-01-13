import 'package:flutter/material.dart';
import 'package:flutter_web_app/Screens/Departments.dart';
import 'package:flutter_web_app/Screens/Help.dart';

//import 'package:flutter_web_app/Screens/Departments.dart';
import '../Screens/Employees.dart';
//import 'package:flutter_web_app/Screens/Help.dart';
import '../Screens/promotion.dart';
//import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.red,
);

class Navbar extends StatefulWidget {
  final double high1;
  Navbar(this.high1);
  @override
  _NavbarState createState() => _NavbarState();
}

List<bool> selected = [true, false, false, false, false];

class _NavbarState extends State<Navbar> {
  List<Widget> navItems = [
    Text(
      'Home',
      style: TextStyle(color: Color(0xff332a7c)),
    ),
    Text(
      'Statistics',
      style: TextStyle(color: Color(0xff332A7C)),
    ),
    Text(
      'Employees',
      style: TextStyle(color: Color(0xff332A7C)),
    ),
    Text(
      'Promotion',
      style: TextStyle(
        color: Color(0xff332A7C),
      ),
    ),
    Text(
      'Help',
      style: TextStyle(
        color: Color(0xff332A7C),
      ),
    ),
  ];

  List<String> routes = [
    '/',
    Depatrments.route,
    Employees.route,
    Promotion.route,
    Help.route,
  ];

  int _selectedPageIndex = 0;
  get high1 => null;

  // get width1 => null;
  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    // if (_selectedPageIndex > 4) {
    //   _selectedPageIndex = 0;
    // }
  }

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i == n) {
        selected[i] = true;
        _selectedPage(i);
      } else {
        selected[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
      height: high1,
      width: 101.0,
      decoration: BoxDecoration(
        color: Color(0xffF25767),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30.0,
            left: 3.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HR',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                Text(
                  'dashboard',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ],
            ),
          ),
          Positioned(
            top: 110,
            child: Column(
              children: navItems
                  .map(
                    (e) => NavBarItem(
                      //icon : Icon(e),

                      text: e,
                      selected: selected[navItems.indexOf(e)],
                      onTap: () {
                        setState(() {
                          select(navItems.indexOf(e));
                          // _selectedPage(index);
                          Navigator.of(context)
                              .pushNamed(routes[_selectedPageIndex]);
                          // Navigator.of(context).pop();
                          // body:
                          // routes[_selectedPageIndex];
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final Widget text;
  final Function onTap;
  final bool selected;
  NavBarItem({
    this.text,
    this.onTap,
    this.selected,
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> with TickerProviderStateMixin {
  AnimationController _controller1;
  AnimationController _controller2;

  Animation<double> _anim1;
  Animation<double> _anim2;
  Animation<double> _anim3;
  Animation<Color> _color;

  bool hovered = false;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 275),
    );

    _anim1 = Tween(begin: 101.0, end: 100.0).animate(_controller1);
    _anim2 = Tween(begin: 140.0, end: 5.0).animate(_controller2);
    _anim3 = Tween(begin: 101.0, end: 50.0).animate(_controller2);
    _color = ColorTween(end: Color(0xff332a7c), begin: Colors.white)
        .animate(_controller2);

    _controller1.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(NavBarItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selected) {
      Future.delayed(Duration(milliseconds: 10), () {
        //_controller1.reverse();
      });
      _controller1.reverse();
      _controller2.reverse();
    } else {
      _controller1.forward();
      _controller2.forward();
      Future.delayed(Duration(milliseconds: 10), () {
        //_controller2.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: Container(
          width: 101.0,
          color:
              hovered && !widget.selected ? Colors.white12 : Colors.transparent,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  child: CustomPaint(
                    painter: CurvePainter(
                      value1: 0,
                      animValue1: _anim3.value,
                      animValue2: _anim2.value,
                      animValue3: _anim1.value,
                    ),
                  ),
                ),
              ),
              Container(
                height: 80.0,
                width: 101.0,
                child: Center(
                  child: widget.text,

                  // child: Icon(
                  //   widget.icon,
                  //   color: _color.value,
                  //   size: 18.0,
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  final double value1; // 200
  final double animValue1; // static value1 = 50.0
  final double animValue2; //static value1 = 75.0
  final double animValue3; //static value1 = 75.0

  CurvePainter({
    this.value1,
    this.animValue1,
    this.animValue2,
    this.animValue3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(101, value1);
    path.quadraticBezierTo(101, value1 + 20, animValue3,
        value1 + 20); // have to use animValue3 for x2
    path.lineTo(animValue1, value1 + 20); // have to use animValue1 for x
    path.quadraticBezierTo(animValue2, value1 + 20, animValue2,
        value1 + 40); // animValue2 = 25 // have to use animValue2 for both x
    path.lineTo(101, value1 + 40);
    // path.quadraticBezierTo(25, value1 + 60, 50, value1 + 60);
    // path.lineTo(75, value1 + 60);
    // path.quadraticBezierTo(101, value1 + 60, 101, value1 + 80);
    path.close();

    path.moveTo(101, value1 + 80); //80
    path.quadraticBezierTo(101, value1 + 60, animValue3, value1 + 60);
    path.lineTo(animValue1, value1 + 60);
    path.quadraticBezierTo(animValue2, value1 + 60, animValue2, value1 + 40);
    path.lineTo(101, value1 + 40);
    path.close();

    paint.color = Colors.white;
    paint.strokeWidth = 101.0;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
