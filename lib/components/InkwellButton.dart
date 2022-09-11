
import 'package:flutter/material.dart';

import '../Config.dart';
import '../Styles.dart';

class InkwellButton extends StatefulWidget {
  const InkwellButton({Key? key,required this.text, required this.navigation, this.color, this.border}) : super(key: key);

  final String text;
  final Widget? navigation;
  final Color? color;
  final double? border;

  @override
  State<InkwellButton> createState() => _InkwellButtonState();
}

class _InkwellButtonState extends State<InkwellButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(widget.border ?? 0),
      color: widget.color ?? Config.activityBackColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(widget.border ?? 0),
        splashColor: Config.primaryColor2,
        highlightColor: Config.primaryColor2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.border ?? 0)
          ),
          width: double.infinity,
          height: 50,
          child: Padding(
            padding: EdgeInsets.only(left: Config.padding),
            child: Text(widget.text, style: Styles.textBlackMediumStyle,),
          ),
          alignment: Alignment.centerLeft,
        ),
        onTap: () {
          if (widget.navigation != null){
            Navigator.push(context, MaterialPageRoute(builder: (_) => widget.navigation!));
          } else {}
        },
      ),
    );
  }
}
