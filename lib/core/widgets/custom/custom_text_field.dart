import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../helpers/extensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.prefix,
    this.suffixIcon,
    this.suffix,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.autofocus = false,
    this.filled = false,
    this.fillColor,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.onTap,
    this.onEditComplete,
    this.inputFormatters,
    this.maxLines = 1,
  });

  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? suffix;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool readOnly;
  final bool autofocus;
  final bool filled;
  final Color? fillColor;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String? value)? onSaved;
  final void Function(String? value)? onChanged;
  final void Function()? onEditComplete;
  final void Function()? onTap;
  final String? Function(String? value)? validator;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 15,
      inputFormatters: inputFormatters,
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        prefix: prefix,
        suffixIcon: suffixIcon,
        suffix: suffix,
        filled: filled,
        fillColor: fillColor,
      ),
      style: context.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w500,
      ),
      readOnly: readOnly,
      autofocus: autofocus,
      onTap: onTap,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
      onEditingComplete: onEditComplete,
      onTapOutside: (details) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
    );
  }
}
