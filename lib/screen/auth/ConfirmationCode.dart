import 'dart:async';

import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/screen/auth/FillingProfile.dart';
import 'package:flutter/material.dart';

class ConfirmationCode extends StatefulWidget {
  const ConfirmationCode({Key? key, required this.number}) : super(key: key);

  final String number;

  @override
  State<ConfirmationCode> createState() => _ConfirmationCodeState();
}

class _ConfirmationCodeState extends State<ConfirmationCode> {
  final TextEditingController codController = TextEditingController();

  late String number;

  bool errorText = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void sendTheCode() {
    if (codController.text.length < 4 || codController.text.length > 4) {
      _scaffoldKey.currentState
          ?.showSnackBar(const SnackBar(content: Text('Неверный код (4 символа)')));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const FillingProfile()));
    }
  }

  @override
  void initState() {
    super.initState();
    number = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Config.activityBackColor),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(Config.padding),
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
                    height: 150,
                  ),
                  Text(
                    'Подтвердите номер',
                    style: Styles.titleVeryBigDarkStyle,
                  ),
                  SizedBox(
                    height: Config.padding,
                  ),
                  Text(
                    'Введите шестизначный код отправленный вам по номеру  +7 ' +
                        number,
                    style: Styles.textBlackMediumStyle,
                  ),
                  SizedBox(
                    height: Config.padding * 2,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: codController,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: Config.textLargeSize,
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
                          borderSide: const BorderSide(
                              color: Config.secondaryButtonColor, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Config.smallBorderRadius,
                            ),
                          ),
                          borderSide:
                              BorderSide(color: Config.borderColor, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Config.smallBorderRadius,
                          ),
                          borderSide: BorderSide(
                              color: Colors.red.shade100, width: 2.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Config.smallBorderRadius,
                          ),
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: Config.padding,
                          //vertical: Config.padding * 1.5,
                        ),
                        hintText: 'Код подтверждения',
                        hintStyle: Styles.textStyle,
                        filled: true,
                        fillColor: Config.textColorOnPrimary,
                      ),
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
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(
                              Config.padding) //content padding inside button
                          ),
                      onPressed: sendTheCode,
                      child: Text(
                        'Отправить',
                        style: TextStyle(color: Config.textColorOnPrimary),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.padding * 2,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Отправить код повторно',
                      ),
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
