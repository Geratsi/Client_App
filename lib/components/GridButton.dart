import 'package:client/Config.dart';
import 'package:client/Styles.dart';
import 'package:flutter/material.dart';

class GridButton extends StatefulWidget {
  const GridButton({Key? key, required this.text, required this.icon, required this.widget})
      : super(key: key);
  final Widget? widget;
  final String text;
  final IconData icon;

  @override
  State<GridButton> createState() => _GridButtonState();
}

class _GridButtonState extends State<GridButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Config.primaryColor2,
      borderRadius: BorderRadius.all(
        Radius.circular(Config.smallBorderRadius),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Config.smallBorderRadius),
        ),
        splashColor: Config.splashColor,
        hoverColor: Config.splashColor,
        onTap: () {
          if(widget.widget != null){
            Navigator.push(context, MaterialPageRoute(builder: (_) => widget.widget!));
          } else {

          }
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Config.primaryColor2.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            //color: Config.primaryColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(Config.smallBorderRadius),
            ),
          ),
          width: 150,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(widget.icon),
              ),
              Text(
                widget.text,
                style: Styles.textBlackMediumStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
