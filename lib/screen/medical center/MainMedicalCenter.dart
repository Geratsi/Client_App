
import 'dart:ui';

import 'package:client/Api.dart';
import 'package:client/Styles.dart';
import 'package:client/Config.dart';
import 'package:client/entity/Slide.dart';
import 'package:client/components/GridButton.dart';
import 'package:client/screen/price/PriceList.dart';
import 'package:client/screen/specialists/Specialists.dart';
import 'package:client/screen/personal_account/PersonalAccount.dart';
import 'package:client/screen/make_an_appointment/MakeAnAppointment.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MainMedicalCenter extends StatefulWidget {
  const MainMedicalCenter({Key? key}) : super(key: key);

  @override
  State<MainMedicalCenter> createState() => _MainMedicalCenterState();
}

class _MainMedicalCenterState extends State<MainMedicalCenter> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    Api.getSlides().then((value) {
      if (value.isNotEmpty) {
        setState(() {
          slides = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Config.primaryColor2,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Config.padding / 2),
              child: Text(
                'Luciano',
                style: GoogleFonts.junge(
                  fontSize: Config.textLargeSize * 2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Config.activityBackColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(Config.padding),
                child: Text(
                  'Медецинский центр',
                  style: GoogleFonts.cormorantSc(
                      fontSize: Config.textLargeSize,
                      color: Config.textBlackColor,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                height: 1,
                color: Config.primaryLightColor,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: Config.padding,
                    left: Config.padding,
                    top: Config.padding),
                child: Row(
                  children: [
                    Container(
                      width: 3,
                      height: 24,
                      decoration:
                          const BoxDecoration(color: Config.primaryColor2),
                    ),
                    SizedBox(
                      width: Config.padding / 2,
                    ),
                    Text(
                      'Специальные предложения',
                      style: Styles.textBlackMediumStyle,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 81,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Config.primaryColor2,
                            borderRadius: BorderRadius.all(
                                Radius.circular(Config.activityBorderRadius))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Config.padding,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Все',
                                style: Styles.textBlackMediumStyle,
                              ),
                              SizedBox(
                                width: Config.padding / 4,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: Config.padding,
                    left: Config.padding,
                    //bottom: Config.padding / 2,
                    top: Config.padding / 2),
                child: Visibility(
                  visible: slides.isNotEmpty,
                  child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius:
                                5.0, // has the effect of softening the shadow
                            spreadRadius:
                                0.0, // has the effect of extending the shadow
                          )
                        ],
                      ),
                      child: CarouselSlider(
                        items: slides.map((slide) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                color: Config.activityBackColor,
                                child: Stack(
                                  children: <Widget>[
                                    Visibility(
                                      visible: slide.image != null,
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 260,
                                        child: Image.asset(
                                          slide.image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // visible: slide.imageUrl!=null,
                                      // child: Center(
                                      //   child: CachedNetworkImage(
                                      //     progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
                                      //         value: progress.progress,strokeWidth: 4,
                                      //         valueColor: AlwaysStoppedAnimation<Color>(Config.primaryLightColor)),
                                      //     imageUrl:slide.imageUrl!=null ? slide.imageUrl! : '',
                                      //     alignment: Alignment.center,
                                      //   ),
                                      // ),
                                    ),
                                    Visibility(
                                      visible: slide.text != null,
                                      // child: Stack(
                                      //   children: [
                                      //     Padding(
                                      //       padding:
                                      //           EdgeInsets.only(top: 170),
                                      //       child: Container(
                                      //         decoration: BoxDecoration(
                                      //           color: Config.shadowColor
                                      //               .withOpacity(0.6),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Padding(
                                      //       padding: EdgeInsets.all(Config.padding),
                                      //       child: Text(
                                      //         slide.text != null
                                      //             ?
                                      //         slide.text!
                                      //             : '',
                                      //         style: Styles.textWhiteStyle,),
                                      //     ),
                                      //   ],
                                      // )
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 180),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Config.shadowColor
                                                .withOpacity(0.7),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(
                                                    left: Config.padding / 2,
                                                    top: Config.padding / 4,
                                                    right: Config.padding * 6.5,
                                                  bottom: Config.padding / 4,
                                                ),
                                            child: Text(
                                              slide.text != null
                                                  ? slide.text!
                                                  : '',
                                              style: Styles.textSmallWhiteStyle,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: slide.actionTitle != null &&
                                          slide.actionUrl != null,
                                      child: Align(
                                          alignment:
                                              FractionalOffset.bottomRight,
                                          child: MaterialButton(
                                            height: 80,
                                            child: const Text('Подробнее',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14)),
                                            color: Config.shadowColor.withOpacity(0.3),
                                            highlightColor:
                                                Colors.transparent,
                                            splashColor:
                                                Config.primaryLightColor,
                                            onPressed: () {
                                              if (slide.actionTitle != null &&
                                                  slide.actionUrl != null) {
                                                //EventManager.emitter.emit(EventManager.EVENT_GLOBAL_ACTIVITY_OPEN, null, WebActivity(slide.actionTitle!, slide.actionUrl));
                                              }
                                            },
                                          ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: slides.length > 1,
                          autoPlayInterval: const Duration(seconds: 5),
                          viewportFraction: 1.0,
                          aspectRatio: 1.9 / 1.3,
                        ),
                      ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Config.padding, vertical: Config.padding / 2),
                child: SizedBox(
                  height: 15,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: slides.length,
                    itemBuilder: (_, index) {
                      return  AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Config.primaryColor2),
                          margin: EdgeInsets.all(5),
                          width: 10,
                          height: 10,
                      );
                    },
                  ),
                ),
              ),

              const Divider(
                height: 1,
                color: Config.primaryLightColor,
                thickness: 2,
              ),

             GridView.count(
               childAspectRatio: (2.2 / 1),
               shrinkWrap: true,
               primary: false,
               padding: EdgeInsets.all(Config.padding),
               crossAxisSpacing: Config.padding,
               mainAxisSpacing: Config.padding,
               crossAxisCount: 2,
               children: const <Widget>[
                 GridButton(icon: Icons.border_color, text: 'Запись на прием', widget: MakeInAppointment(),),

                 GridButton(icon: Icons.person, text: 'Личный кабинет',widget: PersonalAccount()),

                 GridButton(icon: Icons.monetization_on, text: 'Прайс лист', widget: PriceList()),

                 GridButton(icon: Icons.face, text: 'Наши специалисты', widget: Specialists()),

                 GridButton(icon: Icons.phone, text: 'Обратная связь',widget: null),

                 GridButton(icon: Icons.pin_drop, text: 'Контакты',widget: null),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}
