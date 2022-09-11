
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BloodBiochemistry extends StatefulWidget {
  const BloodBiochemistry({Key? key}) : super(key: key);

  @override
  State<BloodBiochemistry> createState() => _BloodBiochemistryState();
}

class _BloodBiochemistryState extends State<BloodBiochemistry> {
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
                      'Мои анализы',
                      style: Styles.titleVeryBigDarkStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                const Divider(
                  height: 1,
                  color: Config.primaryLightColor,
                  thickness: 2,
                ),
                SizedBox(
                  height: Config.padding,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset('assets/images/analiz.jpg', fit: BoxFit.cover,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
