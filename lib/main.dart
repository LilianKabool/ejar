import 'package:bloc/bloc.dart';
import 'package:ejar_v/presentaion/auth/manager/check_box/check_box_cubit.dart';

import 'package:ejar_v/presentaion/auth/manager/drop_down_button/drop_down_button_cubit.dart';

import 'package:ejar_v/presentaion/auth/manager/forget_password/forget_password_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/login/user_log_in_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/register/register_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/resend_otp/resend_otp_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/reset_password/reset_password_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/verify_code/verifiy_code_cubit.dart';
import 'package:ejar_v/presentaion/auth/manager/visibality_password/visibility_password_cubit.dart';
import 'package:ejar_v/presentaion/auth/screens/splash_screen.dart';
import 'package:ejar_v/presentaion/owner/manager/my_products_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/my_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/processing_orders_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/subscription_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'injection_container.dart';
import 'observer.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 590),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getItMhamad<UserLogInCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<VisibilityPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<SubscriptionCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<MySubscriptionCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<MyProductsCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ProcessingOrdersCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<VerifiyCodeCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ForgetPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ResendOtpCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ResetPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<CheckBoxCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<DropDownButtonCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<RegisterCubit>(),
          ),
        ],
        child: MaterialApp(
          home: SplashScreen(),
        ),
      ),
    );
  }
}
