import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 
  final String hint;
  final IconData? icon;
  final TextEditingController? controller;
  final Color fillColor; // إضافة متغير للون الخلفية

  // تعديل الكونستركتور لتقبل اللون كمعلمة، مع توفير قيمة افتراضية
  const CustomTextField({
    super.key,
    required this.hint,
    this.icon,
    this.controller,
    this.fillColor = const Color(0xffEDC494), // قيمة ابتدائية افتراضية
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        cursorColor: Colors.black,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(14),
         
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: icon != null ? Icon(icon) : null,
          filled: true,
          fillColor: fillColor, // استخدام متغير اللون
        ),
      ),
    );
  }
}
