
import 'dart:async';

import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/components/TextFormFieldData.dart';
import 'package:client/screen/mainScreen.dart';
import 'package:client/screen/medical%20center/MainMedicalCenter.dart';
import 'package:flutter/material.dart';

class FillingProfile extends StatefulWidget {
  const FillingProfile({Key? key}) : super(key: key);

  @override
  State<FillingProfile> createState() => _FillingProfileState();
}

class _FillingProfileState extends State<FillingProfile> {

  late TextEditingController nameController;
  late TextEditingController surnameController;
  late TextEditingController patronymicController;
  late TextEditingController birthController;
  late TextEditingController emailController;
  late TextEditingController cityController;

  bool errorText = false;
  void goMainPage(){
    if(nameController.text.isEmpty || surnameController.text.isEmpty){
      setState(() {
        errorText = true;
      });
      Timer(const Duration(seconds: 2), () {
        errorText = false;
        setState(() {});
      });
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    patronymicController = TextEditingController();
    birthController = TextEditingController();
    emailController = TextEditingController();
    cityController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Config.activityBackColor,
          ),
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
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    height: Config.padding * 2,
                  ),
                  Text(
                    'Введите данные',
                    style: Styles.titleVeryBigDarkStyle,
                  ),
                  SizedBox(
                    height: Config.padding * 2,
                  ),
                  Text('Имя', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: nameController, errorText: errorText,),
                  SizedBox(
                    height: Config.padding * 1.5,
                  ),
                  Text('Фамилия', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: surnameController, errorText: errorText,),
                  SizedBox(
                    height: Config.padding * 1.5,
                  ),
                  Text('Отчество', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: patronymicController, errorText: null,),
                  SizedBox(
                    height: Config.padding * 1.5,
                  ),
                  Text('Дата рождения', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: birthController, errorText: null,),
                  SizedBox(
                    height: Config.padding * 1.5,
                  ),
                  Text('Email', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: emailController, errorText: null,),
                  SizedBox(
                    height: Config.padding * 1.5,
                  ),
                  Text('Город', style: Styles.textStyle,),
                  SizedBox(height: Config.padding / 2,),
                  TextFormFieldData(controller: cityController, errorText: null,),

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
                      onPressed: goMainPage,
                      child: Text(
                        'Отправить',
                        style: TextStyle(color: Config.textColorOnPrimary),
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
