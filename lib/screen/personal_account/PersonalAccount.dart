import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/components/InkwellButton.dart';
import 'package:client/screen/personal_account/my_data/MyData.dart';
import 'package:client/screen/personal_account/my_reservations/My_Reservation.dart';
import 'package:client/screen/personal_account/my_tests/MyTests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({Key? key}) : super(key: key);

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Config.activityBackColor),
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
                      'Личный кабинет',
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
                InkwellButton(text: 'Мои брони', navigation: MyReservation(),),
                InkwellButton(text: 'Мои анализы', navigation: MyTests(),),
                InkwellButton(text: 'Мои данные', navigation: MyData(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
