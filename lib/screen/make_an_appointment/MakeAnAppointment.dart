
import 'package:client/Api.dart';
import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:client/entity/SpecialistsData.dart';
import 'package:client/screen/make_an_appointment/BookingDayAndTime.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MakeInAppointment extends StatefulWidget {
  const MakeInAppointment({Key? key}) : super(key: key);

  @override
  State<MakeInAppointment> createState() => _MakeInAppointmentState();
}

class _MakeInAppointmentState extends State<MakeInAppointment> {
  String selectedValue = 'Выберите процедуру';
  List<SpecialistData>? specialData;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Магнитотерапия"), value: "Магнитотерапия"),
      const DropdownMenuItem(child: Text("Криотерапия общая"), value: "Криотерапия общая"),
      const DropdownMenuItem(child: Text("Ударноволновая терапия"), value: "Ударноволновая терапия"),
      const DropdownMenuItem(child: Text("Электростимуляция"), value: "Электростимуляция"),
      const DropdownMenuItem(child: Text("Пневмовоздействие"), value: "Пневмовоздействие"),
      const DropdownMenuItem(child: Text("Криотерапия"), value: "Криотерапия"),
    ];
    return menuItems;
  }

  @override
  void initState() {
    super.initState();
    //ListDrop = Api.getDropdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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

                Text(
                  'Запись на прием',
                  style: Styles.titleVeryBigDarkStyle,
                ),

                SizedBox(
                  height: Config.padding / 4,
                ),

                Text(
                  'ул. Островского, 26/ ул. Право-Булачная, 49',
                  style: GoogleFonts.cormorantSc(
                      fontSize: Config.textMediumSize,
                      color: Config.textBlackColor,
                      fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: Config.padding * 2,
                ),

                DropdownButtonFormField(
                  hint: Text(selectedValue),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  dropdownColor: Colors.white,
                  //value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                      specialData = Api.getSpecialistData();
                    });
                  },
                  items: dropdownItems,
                ),

                SizedBox(
                  height: Config.padding,
                ),

                Divider(
                  endIndent: Config.padding * 4,
                  indent: Config.padding * 4,
                  height: 1,
                  color: Config.primaryLightColor,
                  thickness: 2,
                ),

                SizedBox(
                  height: Config.padding,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Config.padding),
                  child: Text(
                    'Выберите специалиста',
                    style: Styles.textBlackMediumStyle,
                  ),
                ),

                SizedBox(
                  height: Config.padding,
                ),
                if (specialData == null)
                  const SizedBox()
                else
                  // ListView.builder(
                  //       padding:
                  //           EdgeInsets.symmetric(vertical: Config.padding / 4),
                  //       itemCount: specialData!.length,
                  //       itemBuilder: (BuildContext context, index) {
                  //         return GestureDetector(
                  //           onTap: () {
                  //
                  //           },
                  //           child: Container(
                  //             width: double.infinity,
                  //             height: 100,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(
                  //                     Config.smallBorderRadius),
                  //                 border: Border.all(color: Config.primaryColor)),
                  //             child: Padding(
                  //               padding: EdgeInsets.all(Config.padding / 2),
                  //               child: Row(
                  //                 crossAxisAlignment: CrossAxisAlignment.stretch,
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   CircleAvatar(
                  //                     backgroundColor: Config.primaryColor,
                  //                     radius: 44,
                  //                     child: Center(
                  //                       child: ClipRRect(
                  //                         borderRadius:
                  //                             BorderRadius.circular(1000),
                  //                         child: Image.asset(
                  //                           specialData![index].image,
                  //                           width: 79,
                  //                           height: 79,
                  //                           fit: BoxFit.cover,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     width: Config.padding,
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsets.symmetric(
                  //                         vertical: Config.padding / 2),
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           specialData![index].name,
                  //                           style: Styles.textBlackMediumStyle,
                  //                         ),
                  //                         SizedBox(
                  //                           height: Config.padding / 4,
                  //                         ),
                  //                         Text(
                  //                           specialData![index].age.toString() +
                  //                               ' лет, ' +
                  //                               specialData![index].city,
                  //                           style: GoogleFonts.cormorantSc(
                  //                               fontSize: Config.textMediumSize,
                  //                               color: Config.textBlackColor,
                  //                               fontWeight: FontWeight.w600),
                  //                           textAlign: TextAlign.center,
                  //                         ),
                  //                         SizedBox(
                  //                           height: Config.padding / 4,
                  //                         ),
                  //                         Text(
                  //                           specialData![index].post,
                  //                           style: GoogleFonts.cormorantSc(
                  //                               fontSize: Config.textMediumSize,
                  //                               color: Config.textBlackColor,
                  //                               fontWeight: FontWeight.w600),
                  //                           textAlign: TextAlign.center,
                  //                         )
                  //                       ],
                  //                     ),
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         );
                  //       }
                  //       ),
                Column(
                  children: [
                    for (var index = 0; index < specialData!.length; index++)
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) =>
                            BookingDayAndTime(specData: specialData![index],)));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: Config.padding / 4),
                        child: Container(
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
                                      child: Image.asset(specialData![index].image
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
                                      Text(specialData![index].name, style: Styles.textBlackMediumStyle,),

                                      SizedBox(
                                        height: Config.padding / 4,
                                      ),

                                      Text(specialData![index].age.toString() + ' лет, ' + specialData![index].city,
                                        style: GoogleFonts.cormorantSc(
                                          fontSize: Config.textMediumSize,
                                          color: Config.textBlackColor,
                                          fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,),

                                      SizedBox(
                                        height: Config.padding / 4,
                                      ),

                                      Text(specialData![index].post, style: GoogleFonts.cormorantSc(
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
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
