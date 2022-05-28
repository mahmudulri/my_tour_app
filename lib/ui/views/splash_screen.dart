import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mytour_app/const/app_strings.dart';
import 'package:get/get.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/styles/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () => Get.toNamed(onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.appName,
                style: AppStyles.myTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
