import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.controller,
    this.hintText = 'ابحث عن منتج زراعي',
    this.onChanged,
    this.width,
    this.height = 48,
  });

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final double? width;
  final double height;

  static const Color primaryColor = Color(0xff156651);
  static const Color backgroundColor = Color(0xffF8F9F8);
  static const Color borderColor = Color(0xffE1E1E1);
  static const Color hintColor = Color(0xff9C9C9C);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        onChanged: onChanged,

        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,

        textAlignVertical: TextAlignVertical.center,

        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),

        decoration: InputDecoration(
          hintText: hintText,

          hintTextDirection: TextDirection.ltr,

          hintStyle: const TextStyle(color: hintColor, fontSize: 13),

          suffixIcon: const Icon(Icons.search, color: primaryColor, size: 21),

          filled: true,
          fillColor: backgroundColor,

          contentPadding: const EdgeInsets.symmetric(horizontal: 14),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: borderColor),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: primaryColor, width: 1.2),
          ),
        ),
      ),
    );
  }
}
