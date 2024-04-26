
import 'package:ejar_v/presentaion/auth/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors.dart';

Widget skipLogin(context) {
  return TextButton(
    child: Text(
      'Skip log in',
      style: TextStyle(
          color: AppColors.mediumGolden1,
          fontFamily: 'BAHNSCHRIF',
          fontSize: 16.sp),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainScreen(),
       ),
      );
    },
  );
}
