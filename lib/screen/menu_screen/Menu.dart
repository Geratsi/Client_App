
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/components/InkwellButton.dart';
import 'package:client/screen/auth/SplashScreen.dart';
import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Config.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Config.padding * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Меню', style: Styles.titleVeryBigDarkStyle,),
                    IconButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SplashScreen()));
                        },
                        icon: Icon(Icons.exit_to_app))
                  ],
                ),
                SizedBox(height: Config.padding,),
                InkwellButton(text: 'Запись на прием', navigation: null),
                InkwellButton(text: 'О нас', navigation: null),
                InkwellButton(text: 'Контакты', navigation: null),
                InkwellButton(text: 'Акции и скидки', navigation: null),
                InkwellButton(text: 'Прайс-лист', navigation: null),
                InkwellButton(text: 'Наши специалисты', navigation: null),
                InkwellButton(text: 'Информация', navigation: null),
                InkwellButton(text: 'Обратная связь', navigation: null),
              ],
            ),
          )
      ),
    );
  }
}
