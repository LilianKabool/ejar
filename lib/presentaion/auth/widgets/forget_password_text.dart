import 'package:ejar_v/components.dart';
import 'package:ejar_v/core/constant/colors.dart';
import 'package:ejar_v/presentaion/auth/screens/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/resend_otp.dart';

Widget forgetPasswordText(context) {
  return TextButton(
    child: Text(
      'forget password ?',
      style: TextStyle(
        color: AppColors.mediumGolden1,
        fontFamily: 'BAHNSCHRIF',
        fontSize: 16.sp,
      ),
    ),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
    },
  );
}
