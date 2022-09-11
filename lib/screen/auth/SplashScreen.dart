
import 'package:client/screen/auth/RegisterScreen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../../Config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Config.shadowColor.withOpacity(.8),
          image: const DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(
          Config.padding / 2, MediaQuery.of(context).padding.top,
          Config.padding / 2, Config.padding / 2,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                SvgPicture.asset('assets/images/logo.svg', width: 80, height: 80,),

                SizedBox(height: Config.padding / 2,),

                Text(
                  'Luciano', style: TextStyle(
                  fontSize: 80, color: Config.textColorOnPrimary,
                ),
                ),

                SizedBox(height: Config.padding / 2,),

                const Text(
                  'SPA | FITNESS | BEAUTY CLINIC | HOTEL | RESTAURANT',
                  style: TextStyle(
                    fontFamily: 'Forum',
                    fontSize: 24,
                    color: Config.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            InkWell(
              splashColor: Config.primaryLightColor,
              child: Image.asset(
                'assets/images/auth_button.png', width: 80, height: 80,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
