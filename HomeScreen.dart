
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: w / 2.75,
          width: w / 4,
          child: Animator<double>(
            duration: Duration(milliseconds: 2000),
            cycles: 0,
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 0.0, end: 10.0),
            builder: (context, animatorState, child) => Column(
              children: [
                SizedBox(
                  height: animatorState.value * 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(.25),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
