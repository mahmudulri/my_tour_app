import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/styles/styles.dart';
import 'package:mytour_app/ui/views/auth/sign_in.dart';
import 'package:mytour_app/ui/widgets/viobutton.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create\nYour Account",
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.violateColor,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Create your account and start your journey",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      AppStyles().textFieldDecoration("E-mail Address")),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                decoration: AppStyles().textFieldDecoration("Password"),
              ),
              SizedBox(
                height: 40.h,
              ),
              ViolateButton(
                  "Create new Account", () => Get.toNamed(userform), false.obs),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "--OR--",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/facebook.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/google.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              RichText(
                  text: TextSpan(
                      text: "Already an user? ",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.violateColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(signin),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    ));
  }
}
