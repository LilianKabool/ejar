import 'package:bloc/bloc.dart';
import 'package:ejar_v/presentaion/auth/screens/login_screen.dart';
import 'package:ejar_v/presentaion/auth/screens/main_screen.dart';
import 'package:ejar_v/presentaion/auth/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bussiness_logic/login/login_cubit.dart';
import 'bussiness_logic/login/visibility_password_cubit.dart';

import 'injection.dart';
import 'observer.dart';


void main() async {


  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  initGitIt();

  runApp( MyApp());
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
          BlocProvider(create: (context) => getIt<LoginCubit>(),),
          BlocProvider(create: (context) => getIt<VisibilityPasswordCubit>(),),
        ],
        child: MaterialApp(
          home: SplashScreen(),
        ),
      ),
    );
  }

}
