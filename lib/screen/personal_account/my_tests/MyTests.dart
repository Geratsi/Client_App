
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/components/InkwellButton.dart';
import 'package:client/screen/personal_account/my_tests/blood_biochemistry/BloodBiochemistry.dart';
import 'package:flutter/material.dart';

class MyTests extends StatefulWidget {
  const MyTests({Key? key}) : super(key: key);

  @override
  State<MyTests> createState() => _MyTestsState();
}

class _MyTestsState extends State<MyTests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    height: Config.padding,
                  ),
                  InkwellButton(
                    text: 'Анализы на Covid-19',
                    navigation: null, color: Colors.white,
                    border: Config.smallBorderRadius,),
                  SizedBox(
                    height: Config.padding,
                  ),
                  InkwellButton(
                    text: 'Биохимия крови',
                    navigation: BloodBiochemistry(), color: Colors.white,
                    border: Config.smallBorderRadius,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
