import 'package:ejar_v/components.dart';
import 'package:ejar_v/constant/colors.dart';
import 'package:ejar_v/presentaion/auth/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

signUpTextButton(context) {
  return TextButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    },
    child: Text('Sign me up!',
        style: TextStyle(
            fontFamily: 'BAHNSCHRIF',
            color: AppColors.mediumGolden1,
            fontSize: 16.sp)),
  );
}
