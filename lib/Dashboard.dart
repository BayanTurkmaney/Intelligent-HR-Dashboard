//import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'constants.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 120.0,
              decoration: BoxDecoration(
                //color: Colors.amber,
                color: Color(0xff332A7C),
                borderRadius: BorderRadius.circular(20.0),
              ),
              alignment: Alignment.center, //centerRight
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HR Dashboard',
                            style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Control with your system by us',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.asset(
                          'assets/hr1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Number of completed projects',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: mainTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                // Container(
                //   height: 20.0,
                //   width: 34.0,
                //   decoration: BoxDecoration(
                //     color: Colors.redAccent,
                //     borderRadius: BorderRadius.circular(20.0),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(
                //         Icons.chevron_left,
                //         color: Colors.white,
                //         size: 16.0,
                //       ),
                //       Icon(
                //         Icons.chevron_right,
                //         color: Colors.white54,
                //         size: 16.0,
                //       ),
                //     ],
                //   ),
                // ),
                Spacer(),
                // Container(
                //   height: 32.0,
                //   width: 80.0,
                //   decoration: BoxDecoration(
                //     color: monthButtonColor,
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(Icons.calendar_today,
                //           size: 15.0, color: mainTextColor),
                //       SizedBox(
                //         width: 10.0,
                //       ),
                //       Text(
                //         'Month',
                //         style: GoogleFonts.nunitoSans(
                //           fontSize: 12.0,
                //           color: Colors.black26,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              height: 1.0,
              color: Colors.black12,
            ),
            Container(
              height: 75.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new Wrap(
                spacing: 15.0,
                runSpacing: 5.0,
                direction: Axis.vertical,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalendarPellet(
                    text: 'Mon',
                    subText: '2',
                    color: color1,
                  ),
                  CalendarPellet(
                    text: 'Tue',
                    subText: '3',
                    color: color2,
                  ),
                  CalendarPellet(
                    text: 'Wed',
                    subText: '4',
                    color: color3,
                  ),
                  CalendarPellet(
                    text: 'Thu',
                    subText: '5',
                    color: color4,
                  ),
                  CalendarPellet(
                    text: 'Fri',
                    subText: '6',
                    color: color1,
                  ),
                  CalendarPellet(
                    text: 'Sat',
                    subText: '7',
                    color: color2,
                  ),
                  CalendarPellet(
                    text: 'Sun',
                    subText: '8',
                    color: color3,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: 1.0,
              color: Colors.black12,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  'Weekly Reports',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: mainTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                // Text(
                //   'Today',
                //   style: GoogleFonts.nunitoSans(
                //     fontSize: 12.0,
                //     color: Colors.black45,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
                // SizedBox(width: 10.0),
                // Text(
                //   'Week',
                //   style: GoogleFonts.nunitoSans(
                //     fontSize: 12.0,
                //     color: mainTextColor,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
                // SizedBox(width: 10.0),
                // Text(
                //   'Month',
                //   style: GoogleFonts.nunitoSans(
                //     fontSize: 12.0,
                //     color: Colors.black45,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 10.0, //15.0
            ),
            Container(
              height: 140.0,
              child: new Wrap(
                spacing: 5.0,
                runSpacing: 5.0,
                direction: Axis.vertical,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeeklyReportCards(
                    text: 'System Junk',
                    buttonText: '35 Gb',
                    color: color1,
                    icon: Icons.delete_outline,
                  ),
                  WeeklyReportCards(
                    text: 'iTunes Junk',
                    buttonText: '1.25 Gb',
                    color: color3,
                    icon: Icons.music_note,
                  ),
                  WeeklyReportCards(
                    text: 'Trash Bins',
                    buttonText: '16.35 Gb',
                    color: color2,
                    icon: Icons.delete,
                  ),
                  WeeklyReportCards(
                    text: 'Photo Junk',
                    buttonText: '12.10 Gb',
                    color: color4,
                    icon: Icons.photo,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Updating Monitoring',
              style: TextStyle(
                fontSize: 16.0,
                color: mainTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff8CE3F3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: new Wrap(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        spacing: 15.0,
                        runSpacing: 5.0,
                        direction: Axis.vertical,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'System Files',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: mainTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'December 2019',
                                style: TextStyle(
                                  fontSize: 11.0,
                                  color: mainTextColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 1.0,
                            height: 50.0,
                            color: Colors.black12,
                          ),
                          SleekCircularSlider(
                              initialValue: 25,
                              appearance: CircularSliderAppearance(
                                size: 50.0,
                                startAngle: -90,
                                angleRange: 360,
                                infoProperties: InfoProperties(
                                  mainLabelStyle: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                customWidths: CustomSliderWidths(
                                  progressBarWidth: 5.0,
                                  trackWidth: 5.0,
                                ),
                                customColors: CustomSliderColors(
                                  progressBarColor: color3,
                                  dotColor: color3,
                                  hideShadow: true,
                                  trackColor: monthButtonColor,
                                ),
                              ),
                              onChange: (double value) {
                                print(value);
                              })
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // color: mainTextColor,
                        color: Color(0xffFFA000),
                      ),
                      child: Row(
                        //spacing: 5.0,
                        //runSpacing: 5.0,
                        //direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Applications',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'December 2019',
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 1.0,
                              height: 50.0,
                              color: Colors.white12,
                            ),
                          ),
                          Expanded(
                            child: SleekCircularSlider(
                                initialValue: 50,
                                appearance: CircularSliderAppearance(
                                  size: 50.0,
                                  startAngle: -180,
                                  angleRange: 360,
                                  infoProperties: InfoProperties(
                                    mainLabelStyle: TextStyle(
                                        fontSize: 10.0, color: Colors.white),
                                  ),
                                  customWidths: CustomSliderWidths(
                                    progressBarWidth: 5.0,
                                    trackWidth: 5.0,
                                  ),
                                  customColors: CustomSliderColors(
                                    progressBarColor: Color(0xffFFA000),
                                    dotColor: Color(0xffFFA000),
                                    hideShadow: true,
                                    trackColor: Color(0xff5C5FB2),
                                  ),
                                ),
                                onChange: (double value) {
                                  print(value);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarPellet extends StatefulWidget {
  final String text;
  final String subText;
  final Color color;
  CalendarPellet({
    this.color,
    this.subText,
    this.text,
  });
  @override
  _CalendarPelletState createState() => _CalendarPelletState();
}

class _CalendarPelletState extends State<CalendarPellet> {
  bool exit = true;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          exit = false;
        });
      },
      onExit: (v) {
        setState(() {
          exit = true;
        });
      },
      child: AnimatedContainer(
        height: exit ? 60.0 : 75.0,
        width: exit ? 40.0 : 45.0,
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
            color: exit ? Colors.white : color3,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: exit
                ? []
                : [
                    BoxShadow(
                      color: color3,
                      blurRadius: 10.0,
                    ),
                  ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: exit ? Color(0xff45417C) : Colors.white),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              widget.subText,
              style: TextStyle(
                color: exit ? Colors.black87 : Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Container(
              height: 4.0,
              width: 4.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: exit ? widget.color : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WeeklyReportCards extends StatefulWidget {
  final String text;
  final Color color;
  final String buttonText;
  final IconData icon;
  WeeklyReportCards({
    this.buttonText,
    this.color,
    this.text,
    this.icon,
  });
  @override
  _WeeklyReportCardsState createState() => _WeeklyReportCardsState();
}

class _WeeklyReportCardsState extends State<WeeklyReportCards> {
  bool exit = true;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          exit = false;
        });
      },
      onExit: (value) {
        setState(() {
          exit = true;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: exit ? 120.0 : 140.0,
        width: 100.0,
        decoration: BoxDecoration(
          color: exit ? Colors.white : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: exit ? Colors.black12 : Colors.transparent,
          ),
          boxShadow: exit
              ? []
              : [
                  BoxShadow(
                    spreadRadius: 1.0,
                    blurRadius: 20.0,
                    color: Colors.grey[200],
                  ),
                ],
        ),
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: !exit ? Colors.transparent : widget.color,
                  ),
                  color: !exit ? widget.color : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Icon(
                widget.icon,
                size: 16.0,
                color: !exit ? Colors.white : widget.color,
              ),
            ),
            Spacer(),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 13.0,
                color: mainTextColor,
              ),
            ),
            Spacer(),
            TextButton(
              //child: ,
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: exit ? Colors.transparent : widget.color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.all(0.0),
              ),

              // FlatButton(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   padding: EdgeInsets.all(0.0),
              //   onPressed: () {},
              //   color: exit ? Colors.transparent : widget.color,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: exit ? 35 : 45.0,
                width: 90.0,
                child: Center(
                  child: Text(
                    widget.buttonText,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: exit ? mainTextColor : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
