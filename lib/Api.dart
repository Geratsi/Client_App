
import 'package:client/entity/Slide.dart';
import 'package:client/entity/SpecialistsData.dart';
import 'package:client/screen/specialists/Specialists.dart';
import 'package:flutter/material.dart';

class Api {

  // static Future<List<DropdownMenuItem>> getDropdown() async {
  //   List<DropdownMenuItem> menuItems = [
  //     DropdownMenuItem(child: Text("Магнитотерапия"),value: "Магнитотерапия"),
  //     DropdownMenuItem(child: Text("Криотерапия общая"),value: "Криотерапия общая"),
  //     DropdownMenuItem(child: Text("Ударноволновая терапия"),value: "Ударноволновая терапия"),
  //     DropdownMenuItem(child: Text("Электростимуляция"),value: "Электростимуляция"),
  //     DropdownMenuItem(child: Text("Пневмовоздействие"),value: "Пневмовоздействие"),
  //     DropdownMenuItem(child: Text("Криотерапия"),value: "Криотерапия"),
  //   ];
  //   return menuItems;
  // }

  static List<SpecialistData> getSpecialistData() {
    return [
      SpecialistData('assets/images/Anna.jpg', 'Милана Ринатовна Баширова', 25, 'Казань', 'Косметолог'),
      SpecialistData('assets/images/Din.jpg', 'Гулиза Исламова Восковая', 20, 'Казань', 'Косметолог'),
      SpecialistData('assets/images/Lil.jpg', 'Анфиса Фаттахова Радужная', 230, 'Уфа', 'Косметолог'),
    ];
  }

  static Future<List<Slide>> getSlides() async {
    List<Slide> slides = [];
    try {
      Slide slide = Slide();
      slide.image = 'assets/images/3.jpg';
      //slide.imageUrl = 'imageUrl';
      slide.text = 'Аппаратная лечебная физиотерапия со скидкой 15 %';
      slide.actionTitle = 'actionTitle';
      slide.actionUrl = 'actionUrl';
      slides.add(slide);
      Slide slide2 = Slide();
      slide2.image = 'assets/images/2.jpg';
      //slide2.imageUrl = 'imageUrl';
      slide2.text = 'Припокупке полного курса гидротерапии, обед на двоих в ресторане LUCIANO в подарок';
      slide2.actionTitle = 'actionTitle';
      slide2.actionUrl = 'actionUrl';
      slides.add(slide2);
    } catch(e){}

    return slides;
  }

}