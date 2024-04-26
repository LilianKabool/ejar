
import '../../../core/constant/colors.dart';
import 'package:ejar_v/presentaion/owner/manager/my_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/screens/company_subscription_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../feature/owner/entity/my_subscription_entity.dart';
import '../../../network_exceptions.dart';

class MySubscriptionScreen extends StatefulWidget {
  @override
  State<MySubscriptionScreen> createState() => _MySubscriptionScreenState();
}

class _MySubscriptionScreenState extends State<MySubscriptionScreen> {
  @override
  void initState() {
    context.read<MySubscriptionCubit>().emitPostMySubscription();
    // TODO: implement initState
    super.initState();
  }

  Widget ColumnTableItem(
      {required int index,
      required MySubscriptionEntity mysubscriptionEntity}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            mysubscriptionEntity.subscriptions[index].startDate,
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          Text(
            mysubscriptionEntity.subscriptions[index].endDate,
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          Text(
            mysubscriptionEntity.subscriptions[index].value.toString(),
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSubscriptionTable() {
    return BlocConsumer<MySubscriptionCubit, MySubscriptionState>(
      listener: (context, state) => state.whenOrNull(
        error: (NetworkExceptions exception){},
          // => Fluttertoast.showToast(
          //   msg: NetworkExceptions.getErrorMessage(exception),
          //   toastLength: Toast.LENGTH_SHORT),
      ),
      builder: (context, state) {
        return state.when(
          loading: () => const CupertinoActivityIndicator(),
          success: (mySubscriptionsEntity) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ColumnTableItem(
                    index: index, mysubscriptionEntity: mySubscriptionsEntity);
              },
              itemCount: mySubscriptionsEntity.subscriptions.length,
            );
          },
          error: (networkExceptions) => const SizedBox.shrink(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Subscription',
          style: TextStyle(
            color: AppColors.semiDarkGolden,
            fontFamily: 'Bahnschrift',
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.semiDarkGolden,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Here We will show Your Subscription List',
              style: TextStyle(
                color: AppColors.mediumGolden1,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceItem(),
          DividerItem(),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Start Date',
                            style: TextStyle(
                              color: AppColors.mediumGolden1,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'End Date',
                            style: TextStyle(
                              color: AppColors.mediumGolden1,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Value',
                            style: TextStyle(
                              color: AppColors.mediumGolden1,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: buildSubscriptionTable(),
                ),
              ],
            ),
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     height: 40.h,
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [
          //           AppColors.mediumGolden1,
          //           AppColors.mediumGolden2,
          //           AppColors.mediumGolden1,
          //         ],
          //       ),
          //       borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(37.r),
          //         topLeft: Radius.circular(37.r),
          //       ),
          //     ),
          //     child: Center(
          //       child: Text(
          //         'Done',
          //         style: TextStyle(
          //           fontSize: 17.sp,
          //           color: AppColors.pureWhite,
          //           fontFamily: 'Bahnschrift',
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
