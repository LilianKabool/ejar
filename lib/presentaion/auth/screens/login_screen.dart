

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../bussiness_logic/login/login_cubit.dart';
import '../../../bussiness_logic/login/login_state.dart';
import '../../../bussiness_logic/login/visibility_password_cubit.dart';
import '../../../bussiness_logic/login/visibility_password_state.dart';
import '../../../components.dart';
import '../../../core/constant/colors.dart';
import '../../../data/model/network_exceptions.dart';
import '../widgets/forget_password_text.dart';
import '../widgets/image_for_logo.dart';
import '../widgets/language_text.dart';
import '../widgets/register_text.dart';
import '../widgets/skip_login.dart';
import 'main_screen.dart';


class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageWidget(),
              text(
                textData: 'Mobility Redefined',
                color: AppColors.darkGray,
                fontSize: 22.sp,
              ),
              SizedBox(height: 10.h),
              text(
                textData: 'No Security Deposite',
                color: AppColors.semiBlack,
                fontSize: 18.sp,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your name ";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: TextStyle(
                      fontSize: 13.sp,
                      color: AppColors.mediumGray,
                      fontFamily: 'BAHNSCHRIF',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        4.0.r,
                      ),
                      borderSide: BorderSide(
                        width: 354.w,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0.r),
                      borderSide: BorderSide(
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0.r),
                      borderSide: BorderSide(
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: BlocBuilder<VisibilityPasswordCubit , VisibilityPasswordState>(
                  builder: (context, state) {
                    return  TextFormField(
                      obscureText: password,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your password ";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'BAHNSCHRIF',
                          fontSize: 13.sp,
                          color: AppColors.mediumGray,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            BlocProvider.of<VisibilityPasswordCubit>(context)
                                .emitChangeVisibilityPassword();
                            password = BlocProvider
                                .of<VisibilityPasswordCubit>(context)
                                .password;
                          },
                          icon: Icon(
                            password ? Icons.visibility : Icons.visibility_off,
                          ),

                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            4.0,
                          ),
                          borderSide: BorderSide(
                            width: 354.w,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0.r),
                          borderSide: BorderSide(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0.r),
                          borderSide: BorderSide(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (loginModel) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ));
                      return showAlertDialog(
                          context, "Logged in successfully!");
                    },
                    error: (  error) {
                      return showAlertDialog(
                          context, NetworkExceptions.getErrorMessage(error));
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Container(
                          width: 354.w,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.semiDarkGolden,
                                AppColors.mediumGolden1,
                                AppColors.mediumGolden2,
                              ],
                            ),
                          ),
                          child: TextButton(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: AppColors.brown,
                                  fontSize: 22.sp,
                                  fontFamily: 'BAHNSCHRIF',
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  var result =
                                  BlocProvider.of<LoginCubit>(context)
                                      .emitLogin(emailController.text,
                                      passwordController.text);
                                  return result;
                                } else {
                                  print('null ');
                                }
                              }),
                        ),
                      );
                    },
                    idel: () {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Container(
                          width: 354.w,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.semiDarkGolden,
                                AppColors.mediumGolden1,
                                AppColors.mediumGolden2,
                              ],
                            ),
                          ),
                          child: TextButton(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: AppColors.brown,
                                  fontSize: 22.sp,
                                  fontFamily: 'BAHNSCHRIF',
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  var result =
                                  BlocProvider.of<LoginCubit>(context)
                                      .emitLogin(emailController.text,
                                      passwordController.text);
                                  return result;
                                }
                                else {
                                  print('null ');
                                }
                              }),
                        ),
                      );
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  );
                },
              ),
              SizedBox(
                height: 10.0.h,
              ),
              forgetPasswordText(context),
              SizedBox(
                height: 21.0.h,
              ),
              registerText(context),
              SizedBox(
                height: 10.0.w,
              ),
              skipLogin(context),
              SizedBox(
                height: 40.h,
              ),
              languageText(),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, message) {
    AlertDialog alert = AlertDialog(
      content: text(
        textData: message,
      ),
    );
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
