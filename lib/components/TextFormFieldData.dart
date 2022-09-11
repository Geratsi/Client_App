
import 'package:client/Config.dart';
import 'package:flutter/material.dart';

class TextFormFieldData extends StatefulWidget {
  const TextFormFieldData({Key? key, required this.controller, required this.errorText}) : super(key: key);

  final TextEditingController controller;
  final bool? errorText;

  @override
  State<TextFormFieldData> createState() => _TextFormFieldDataState();
}

class _TextFormFieldDataState extends State<TextFormFieldData> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: Config.textLargeSize,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              Config.smallBorderRadius * 1.5,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Config.smallBorderRadius * 1.5,
            ),
          ),
          borderSide: const BorderSide(
              color: Config.activityBackColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Config.smallBorderRadius * 1.5,
            ),
          ),
          borderSide: const BorderSide(color: Config.activityBackColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Config.smallBorderRadius * 1.5,
          ),
          borderSide: BorderSide(
              color: Colors.red.shade100, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Config.smallBorderRadius * 1.5,
          ),
          borderSide:
          BorderSide(color: Colors.grey.shade200, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: Config.padding,
        ),
        errorText: widget.errorText == null ? null : widget.errorText! ? 'Поле должно быть заполнено' : null,
        filled: true,
        fillColor: Config.textColorOnPrimary,
      ),
    );
  }
}
