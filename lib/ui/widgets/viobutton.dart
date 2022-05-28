import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/ui/route/route.dart';

class ViolateButton extends StatelessWidget {
  String title;
  // String screenName;
  final Function onAction;
  ViolateButton(
    this.title,
    this.onAction,
    this._value,
  );
  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () async {
          _value.value = true;
          await Future.delayed(Duration(seconds: 1));

          onAction();
          _value.value = false;
        },
        child: Container(
          height: 45.h,
          decoration: BoxDecoration(
            color: AppColors.violateColor,
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.sp,
                      color: Colors.white,
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Please Wait",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
