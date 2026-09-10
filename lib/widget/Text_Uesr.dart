import 'package:flutter/material.dart';

class TextFromUser extends StatefulWidget {
  const TextFromUser({
    super.key,
    required this.label,
    this.icon,
    this.controller,
    this.obscureText,
    this.icon2,
    this.validator,
  });
  final String label;
  final TextEditingController? controller;
  final Widget? icon;
  final Widget? icon2;
  final bool? obscureText;
  final String? Function(String?)? validator;

  @override
  State<TextFromUser> createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 50,
            width: 300,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              cursorColor: const Color(0xff156651),
              cursorWidth: 2.0, // عرض المؤشر
              cursorHeight: 20,
              controller: widget.controller,
              obscureText: widget.obscureText ?? false,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),

              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFFFF0000)),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFFFF0000)),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: const Color(0xFFECE0F7),
                prefixIcon: widget.icon,
                suffixIcon: widget.icon2,
                hint: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 11,
                        ),
                        widget.label,
                      ),
                    ],
                  ),
                ),
              ),
              validator: widget.validator,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
