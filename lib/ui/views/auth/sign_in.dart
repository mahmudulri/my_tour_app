import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/styles/styles.dart';
import 'package:mytour_app/ui/widgets/viobutton.dart';

class SignIn extends StatelessWidget {
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
                "Login\nto Your Account",
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.violateColor,
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
              // ViolateButton("Login", () {}),...............................................have to solve
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
                      text: "Don't have registered yet? ",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.violateColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(signup),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    ));
  }
}
