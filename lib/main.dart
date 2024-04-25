import 'package:bloc/bloc.dart';
import 'package:ejar_v/injection_container.dart';
import 'package:ejar_v/presentaion/auth/screens/login_screen.dart';
import 'package:ejar_v/presentaion/auth/screens/main_screen.dart';
import 'package:ejar_v/presentaion/auth/screens/splash_screen.dart';
import 'package:ejar_v/presentaion/owner/manager/active_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/add_photo_to_product_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/update_product_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/set_card_info_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/get_category_attributes_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/subscripe_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/user_log_in_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/processing_orders_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/my_products_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/my_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/screens/company_subscription_screen.dart';
import 'package:ejar_v/presentaion/owner/widgets/profile_widget.dart';
import 'package:ejar_v/presentaion/user/manager/cubit/get_profile_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bussiness_logic/login/login_cubit.dart';
import 'bussiness_logic/login/visibility_password_cubit.dart';

import 'injection.dart';
import 'bloc_observer.dart';


void main() async {

await configureDependencies();

  Bloc.observer = const AppBlocObserver();
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
                    BlocProvider(create: (context) => getItMhamad<SubscriptionCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<MySubscriptionCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<MyProductsCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<ProcessingOrdersCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<UserLogInCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<SubscripeCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<ActiveSubscriptionCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<SetCardInfoCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<AddPhotoToProductCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<GetCategoryAttributesCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<UpdateProductCubit>(),),
                    BlocProvider(create: (context) => getItMhamad<GetProfileCubit>(),),

          BlocProvider(create: (context) => getIt<VisibilityPasswordCubit>(),),
        ],
        child: MaterialApp(
          home: OwnerProfileScreen(),
        ),
      ),
    );
  }

}
