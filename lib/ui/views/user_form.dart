import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mytour_app/const/app_colors.dart';
import 'package:mytour_app/ui/route/route.dart';
import 'package:mytour_app/ui/styles/styles.dart';
import 'package:get/get.dart';
import 'package:mytour_app/ui/widgets/viobutton.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserForm extends StatelessWidget {
  DateTime selectedDate = DateTime.now();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  Rx<TextEditingController> _dobController = TextEditingController().obs;

  _selectedDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      _dobController.value.text =
          "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tell US More About You",
                style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.violateColor,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "We will not share your information outside this application.",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              FormField(_nameController, TextInputType.name, "Name"),
              FormField(_phoneController, TextInputType.phone, "Number"),
              FormField(_addressController, TextInputType.name, "Address"),
              Obx(
                () => TextFormField(
                  controller: _dobController.value,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        _selectedDate(context);
                      },
                      icon: Icon(Icons.calendar_month_outlined),
                    ),
                    hintText: "Date of Birth",
                    hintStyle: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ToggleSwitch(
                  minWidth: 100.0,
                  minHeight: 50.0,
                  fontSize: 16.0,
                  initialLabelIndex: 1,
                  // activeBgColor: [Colors.red],
                  // activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.grey[900],
                  totalSwitches: 2,
                  labels: [
                    'Male',
                    'Female',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ViolateButton(
                  "Submit", () => Get.toNamed(privacypolicy), false.obs),
            ],
          ),
        ),
      ),
    ));
  }

  Widget FormField(controller, inputType, hint) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: AppStyles().textFieldDecoration(hint),
    );
  }
}
