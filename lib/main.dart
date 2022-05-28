import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/const/app_strings.dart';

import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/views/auth/sign_up.dart';
import 'package:mytour_app/ui/views/splash_screen.dart';
import 'package:mytour_app/ui/views/user_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(),
            ),
            scaffoldBackgroundColor: AppColors.scaffoldColor,
          ),
          // initialRoute: splash,
          getPages: getPages,
          home: UserForm(),
        );
      },
    );
  }
}
