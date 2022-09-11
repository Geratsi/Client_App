
import 'package:client/Config.dart';

import 'package:client/Styles.dart';
import 'package:client/entity/SpecialistsData.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class BookingDayAndTime extends StatefulWidget {
  const BookingDayAndTime({Key? key, required this.specData}) : super(key: key);

  final SpecialistData specData;

  @override
  State<BookingDayAndTime> createState() => _BookingDayAndTimeState();
}

class _BookingDayAndTimeState extends State<BookingDayAndTime> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Config.activityBackColor),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
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
                            icon: Icon(Icons.arrow_back_ios),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Запись на прием',
                              style: Styles.titleVeryBigDarkStyle,
                            ),

                            SizedBox(
                              height: Config.padding / 4,
                            ),

                            Text('ул. Островского 26/ ул. Право-Булачная, 49',
                              style: GoogleFonts.cormorantSc(
                                fontSize: Config.textMediumSize,
                                color: Config.textBlackColor,
                                fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(
                      height: Config.padding * 2,
                    ),

                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Config.smallBorderRadius),
                          border: Border.all(color: Config.primaryColor)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(Config.padding / 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Config.primaryColor,
                              radius: 44,
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(1000),
                                  child: Image.asset(widget.specData.image
                                    , width: 79,
                                    height: 79, fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: Config.padding,
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: Config.padding / 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.specData.name, style: Styles.textBlackMediumStyle,),

                                  SizedBox(
                                    height: Config.padding / 4,
                                  ),

                                  Text(widget.specData.age.toString() + ' лет, ' + widget.specData.city,
                                    style: GoogleFonts.cormorantSc(
                                        fontSize: Config.textMediumSize,
                                        color: Config.textBlackColor,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),

                                  SizedBox(
                                    height: Config.padding / 4,
                                  ),

                                  Text(widget.specData.post, style: GoogleFonts.cormorantSc(
                                      fontSize: Config.textMediumSize,
                                      color: Config.textBlackColor,
                                      fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Config.padding / 2,
                    )
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
