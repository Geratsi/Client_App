import 'dart:async';

import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/screen/auth/ConfirmationCode.dart';
import 'package:flutter/material.dart';
import 'package:easy_mask/easy_mask.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController numberController = TextEditingController();

  late String number;

  bool errorText = false;

  getTheCode(){
    number = numberController.text;
    //number = numberController.text.replaceAll(RegExp(r"[^0-9]+"),'');

    if (numberController.text.length < 15){
      errorText = true;
      setState(() {});
      Timer(const Duration(seconds: 1), () {
        errorText = false;
        setState(() {});
      });

    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmationCode(number: number,)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Config.activityBackColor),
          child: Padding(
            padding: EdgeInsets.all(Config.padding),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Config.padding * 2,
                  ),

                  IconButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  const SizedBox(
                    height: 120,
                  ),

                  Text('Войти или\nзарегистрироваться',
                      style: Styles.titleVeryBigDarkStyle),

                  SizedBox(
                    height: Config.padding,
                  )
                  ,
                  Text(
                    'Мы отправим на номер SMS-сообщение с\nкодом подтверждения.',
                    style: Styles.textBlackMediumStyle,
                  ),

                  SizedBox(
                    height: Config.padding * 2,
                  ),

                  TextFormField(
                    controller: numberController,
                    inputFormatters: [TextInputMask(mask: '(999) 999 99 99')],
                    style: TextStyle(
                      color: Config.textTitleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: Config.textLargeSize,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      signed: false,
                      decimal: false,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.smallBorderRadius,
                          ),
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.smallBorderRadius,
                          ),
                        ),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 3.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.smallBorderRadius,
                          ),
                        ),
                        borderSide:
                            BorderSide(color: Config.borderColor, width: 3),
                      ),

                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          Config.smallBorderRadius,
                        ),
                        borderSide:
                            BorderSide(color: Colors.red.shade100, width: 2.0),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          Config.smallBorderRadius,
                        ),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 1.5),
                      ),

                      errorText: errorText ? 'Неверный номер' : null,
                      errorStyle: TextStyle(color: Colors.red.shade200),

                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Config.padding,
                        vertical: Config.padding * 1.5,
                      ),

                      //hintText: '+7 (___) ___-__-__',
                      //hintStyle: TextStyle(color: Colors.grey, fontSize: Config.textLargeSize),
                      labelText: 'Телефон',
                      labelStyle: TextStyle(
                          color: Config.textColor, fontSize: Config.textMediumSize),

                      prefix: const Text('+7 '),
                      filled: true,
                      fillColor: Config.textColorOnPrimary,
                    ),
                  ),

                  SizedBox(
                    height: Config.padding * 2,
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Config.textBlackColor,
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                            ),
                            padding: EdgeInsets.all(Config.padding) //content padding inside button
                        ),
                      onPressed: getTheCode,
                      child: Text('Получить код', style: TextStyle(color: Config.textColorOnPrimary),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//F4F5F0
