
import 'dart:io';

import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/entity/SelectItem.dart';
import 'package:client/components/android/AndroidSelect.dart';
import 'package:client/screen/personal_account/my_data/LabelAndContent.dart';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';


class MyData extends StatefulWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  final ImagePicker _picker = ImagePicker();

  final String image = 'assets/images/Din.jpg';

  File? _imageFile;

  /// Get from gallery
  void _getFromGallery() async {
    Navigator.pop(context);
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from camera
  void _getFromCamera() async {
    Navigator.pop(context);
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    // if (pickedFile != null) {

    // }
  }

  void _chooseSource() {
    Iterable<SelectItem> selectItems = <SelectItem>[
      SelectItem('Камера', _getFromCamera),
      SelectItem('Галерея', _getFromGallery),
    ];

    if (Platform.isIOS) {
      // showCupertinoModalPopup(
      //   context: context,
      //   builder: (_) => IOSSelect(
      //     title: 'Выберите хранилище',
      //     selectActions: _selectActions,
      //   ),
      // );

    } else if (Platform.isAndroid) {
      showDialog(
        context: context,
        builder: (_) => AndroidSelect(
          title: 'Выберите хранилище',
          selectItems: selectItems,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        'Мои данные',
                        style: Styles.titleVeryBigDarkStyle,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: Config.padding,
                  ),

                  _imageFile != null
                      ? Align(
                          child: CircleAvatar(
                            backgroundColor: Config.primaryColor2,
                            radius: 60,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(1000),
                                child: Image.file(
                                  _imageFile!, width: 56,
                                  height: 56, fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Align(
                          child: CircleAvatar(
                            backgroundColor: Config.primaryColor2,
                            radius: 60,
                            child: CircleAvatar(
                              radius: 56,
                              backgroundImage:
                                  AssetImage(image),
                            ),
                          ),
                        ),

                  SizedBox(
                    height: Config.padding,
                  ),

                  Align(
                    child: TextButton(
                      onPressed: _chooseSource,
                      child: Text(
                        'Редактирование фото профиля',
                        style: Styles.textStyle,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Config.padding,
                  ),

                  LabelAndContent(label: 'Имя:', content: 'Милана'),

                  LabelAndContent(label: 'Фамилия:', content: 'Баширова'),

                  LabelAndContent(label: 'Отчество:', content: 'Ренатовна'),

                  LabelAndContent(label: 'Возраст:', content: '25'),

                  LabelAndContent(label: 'Город:', content: 'Казань'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
