import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/dimension.dart';
import '../utils/small_text.dart';

class TextFormCustom extends StatelessWidget {
  int maxLine;
  String text;
  String? initialValue;
  TextInputType textInputType = TextInputType.text;
  final String? Function(String?) onChange;
  final String? Function(String?) onSaved;
  final String? Function(String?)? validator;
  TextEditingController? controller;
  TextFormCustom(
      {super.key,
      required this.maxLine,
      required this.initialValue,
      required this.text,
      required this.textInputType,
      required this.onChange,
      required this.onSaved,
      this.validator,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: initialValue,
      onChanged: onChange,
      onSaved: onSaved,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      maxLines: maxLine,
      controller: controller,
      style: TextStyle(
          color: AppColors.textBlack,
          fontWeight: FontWeight.w500,
          fontSize: Dimension.font16),
      keyboardType: textInputType,
      decoration: InputDecoration(
          label: SmallText(
            text: text,
            size: Dimension.font16,
            color: AppColors.textBlack,
            textAlign: TextAlign.left,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.height10 / 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.height10 / 2),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black,
            ),
          ),
          errorMaxLines: 2,
          contentPadding:
              EdgeInsets.only(top: Dimension.height10, left: Dimension.width10),
          hintStyle: TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w500,
              fontSize: Dimension.font14),
          hintText: "",
          fillColor: Colors.white),
    );
  }
}
