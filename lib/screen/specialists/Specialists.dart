import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Specialists extends StatefulWidget {
  const Specialists({Key? key}) : super(key: key);

  @override
  State<Specialists> createState() => _SpecialistsState();
}

class _SpecialistsState extends State<Specialists> {
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
                  height: Config.padding,
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: Config.padding * 2,),
                    Text(
                      'Наши специалисты',
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
                Text(
                  'Врачи эндокринологи',
                  style: GoogleFonts.cormorantSc(
                      fontSize: Config.textLargeSize,
                      color: Config.textBlackColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset('assets/images/Din.jpg'),
                    ),
                    SizedBox(
                      height: Config.padding,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Миннулина Динара\nРавилевна', style: GoogleFonts.cormorantSc(
                            fontSize: Config.textLargeSize,
                            color: Config.textBlackColor,
                            fontWeight: FontWeight.w600),),
                        SizedBox(height: Config.padding,),
                        const Text('Врач эндокринолог,\nдетский эндокринолог.\nКазанский Государственный\nМедецинский Университет')
                      ],
                    ),


                  ],
                ),
                SizedBox(height: Config.padding * 2,),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset('assets/images/Anna.jpg'),
                    ),
                    SizedBox(
                      height: Config.padding,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ахметшина Гулюза\nМаратавна', style: GoogleFonts.cormorantSc(
                            fontSize: Config.textLargeSize,
                            color: Config.textBlackColor,
                            fontWeight: FontWeight.w600),),
                        SizedBox(height: Config.padding,),
                        const Text('Врач эндокринолог,\nдетский эндокринолог.\nКазанский Государственный\nМедецинский Университет')
                      ],
                    ),


                  ],
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Text(
                  'Врачи-неврологи',
                  style: GoogleFonts.cormorantSc(
                      fontSize: Config.textLargeSize,
                      color: Config.textBlackColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Config.padding,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset('assets/images/Din.jpg',),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ахметшина Зуля\nАзатовна', style: GoogleFonts.cormorantSc(
                            fontSize: Config.textLargeSize,
                            color: Config.textBlackColor,
                            fontWeight: FontWeight.w600),),
                        SizedBox(height: Config.padding,),
                        const Text('Врач эндокринолог,\nдетский эндокринолог.\nКазанский Государственный\nМедецинский Университет')
                      ],
                    ),


                  ],
                ),
                SizedBox(height: Config.padding * 2,),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset('assets/images/Anna.jpg'),
                    ),
                    SizedBox(
                      height: Config.padding,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Высотская Зиля\nРенатовна', style: GoogleFonts.cormorantSc(
                            fontSize: Config.textLargeSize,
                            color: Config.textBlackColor,
                            fontWeight: FontWeight.w600),),
                        SizedBox(height: Config.padding,),
                        const Text('Врач эндокринолог,\nдетский эндокринолог.\nКазанский Государственный\nМедецинский Университет')
                      ],
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
