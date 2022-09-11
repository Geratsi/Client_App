
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:flutter/material.dart';

class PriceList extends StatefulWidget {
  const PriceList({Key? key}) : super(key: key);

  @override
  State<PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: Config.padding * 2,),
                    Text(
                      'Прайс лист',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ингаляция', style: Styles.textBlackMediumStyle,),
                    Text('от 600 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Магнитотерапия', style: Styles.textBlackMediumStyle,),
                    Text('от 600 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('Низкоинтенсивное лазерное облучение (Аппарат Милда)', style: Styles.textBlackMediumStyle,)),
                    Expanded(child: Text('от 1300 до 1700 Р',  style: Styles.textBlackMediumStyle, textAlign: TextAlign.end,)),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Криотерапия общая', style: Styles.textBlackMediumStyle,),
                    Text('от 3900 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ударноволновая терапия', style: Styles.textBlackMediumStyle,),
                    Text('от 5900 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Электростимуляция', style: Styles.textBlackMediumStyle,),
                    Text('от 700 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ультразвуковое лечение кожи', style: Styles.textBlackMediumStyle,),
                    Text('от 600 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Пневмовоздействие', style: Styles.textBlackMediumStyle,),
                    Text('от 2600 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('АЭРОЗОЛЬТЕРАПИЯ (КСЕНОН ДО 3Л)', style: Styles.textBlackMediumStyle,)),
                    Text('от 50 000 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('АЭРОЗОЛЬТЕРАПИЯ (КСЕНОН ДО 5Л)', style: Styles.textBlackMediumStyle,)),
                    Text('от 75 000 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('ГИПЕРБАРИЧЕСКАЯ ОКСИГЕНАЦИЯ (БАРОКАМЕРА)', style: Styles.textBlackMediumStyle,)),
                    Text('от 700 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('ГИДРОГАЛЬВАНИЧЕСКИЕ ВАННЫ КАМЕРНЫЕ ДЛЯ КОНЕЧНОСТЕЙ', style: Styles.textBlackMediumStyle,)),
                    Text('от 1 000 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('КРИОТЕРАПИЯ ОБЩАЯ', style: Styles.textBlackMediumStyle,),
                    Text('от 900 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('ЭЛЕКТРОСТИМУЛЯЦИЯ (АППАРАТ BTL)', style: Styles.textBlackMediumStyle,)),
                    Text('от 1700 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('УЛЬТРАЗВУКОВОЕ ЛЕЧЕНИЕ КОЖИ (АППАРАТ BTL)', style: Styles.textBlackMediumStyle,)),
                    Text('от 8800 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Лекарственный электрофорез', style: Styles.textBlackMediumStyle,),
                    Text('от 800 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Лекарственный электрофорез', style: Styles.textBlackMediumStyle,),
                    Text('от 700 Р',  style: Styles.textBlackMediumStyle),
                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
