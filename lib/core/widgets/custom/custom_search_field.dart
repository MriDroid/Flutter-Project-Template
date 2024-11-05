import 'dart:async';

import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../helpers/extensions.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField(
      {super.key, this.hintText, this.onChanged, this.controller});
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String? value)? onChanged;

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isEmpty = widget.controller?.text.isEmpty ?? true;
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 15,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: const Icon(
          Icons.search_rounded,
          size: 24,
          color: AppColors.primary,
        ),
        suffixIcon: !isEmpty
            ? GestureDetector(
                onTap: () {
                  widget.controller?.clear();
                  widget.onChanged?.call('');
                  setState(() {});
                },
                child: const Icon(
                  Icons.close_rounded,
                  size: 24,
                  color: AppColors.primary,
                ),
              )
            : null,
        filled: true,
        fillColor: Colors.white,
        // border: InputBorder.none,
      ),
      style: context.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w500,
      ),
      onChanged: (value) {
        if (_debounce?.isActive ?? false) {
          _debounce?.cancel();
        }
        _debounce = Timer(
          const Duration(seconds: 1),
          () => widget.onChanged?.call(value),
        );
        setState(() {});
      },
    );
  }
}
