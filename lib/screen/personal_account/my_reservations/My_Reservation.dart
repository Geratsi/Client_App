
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:flutter/material.dart';

class MyReservation extends StatefulWidget {
  const MyReservation({Key? key}) : super(key: key);

  @override
  State<MyReservation> createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Config.activityBackColor
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Config.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: Config.padding * 2,
                    ),
                    Text(
                      'Брони',
                      style: Styles.titleVeryBigDarkStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
