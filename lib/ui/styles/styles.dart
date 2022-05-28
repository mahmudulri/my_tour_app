import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle myTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
  );

  InputDecoration textFieldDecoration(String hint) => InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16.sp,
        ),
      );
}
