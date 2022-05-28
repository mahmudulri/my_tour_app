import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/widgets/viobutton.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ViolateButton("Agree", () => Get.toNamed(privacypolicy), false.obs),
            
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
