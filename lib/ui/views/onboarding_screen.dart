import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/styles/styles.dart';
import 'package:mytour_app/ui/views/auth/sign_up.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> lottieFiles = [
    'assets/files/welcome.json',
    'assets/files/categories.json',
    'assets/files/support.json'
  ];

  List<String> title = ['welcome', 'categories', 'support'];

  List<String> description = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
  ];

  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                flex: 2,
                child: Lottie.asset(lottieFiles[_currentIndex.toInt()]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.scaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 10,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 5,
                          spreadRadius: 1.0),
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          '${title[_currentIndex.toInt()]}',
                          style: AppStyles.myTextStyle,
                        ),
                      ),
                      Obx(
                        () => Text('${description[_currentIndex.toInt()]}'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => DotsIndicator(
                              dotsCount: lottieFiles.length,
                              position: _currentIndex.toDouble(),
                              decorator: DotsDecorator(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (_currentIndex == title.length - 1) {
                                Get.toNamed(signup);
                              } else {
                                _currentIndex + 1;
                              }
                            },
                            child: Container(
                              height: 37.h,
                              width: 37.w,
                              decoration: BoxDecoration(
                                  color: AppColors.scaffoldColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 10,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 5,
                                      spreadRadius: 1.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
