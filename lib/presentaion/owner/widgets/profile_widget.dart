import 'package:cached_network_image/cached_network_image.dart';
import 'package:ejar_v/core/constant/colors.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/my_products_entity.dart';
import 'package:ejar_v/data/user/entity/profile_entity.dart';
import 'package:ejar_v/presentaion/owner/manager/my_products_cubit.dart';
import 'package:ejar_v/presentaion/owner/screens/company_subscription_screen.dart';
import 'package:ejar_v/presentaion/owner/screens/details_screen.dart';
import 'package:ejar_v/presentaion/owner/screens/edit_profile_user.dart';
import 'package:ejar_v/presentaion/user/manager/cubit/get_profile_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';


class OwnerProfileScreen extends StatefulWidget {
  @override
  State<OwnerProfileScreen> createState() => _OwnerProfileScreenState();
}

class _OwnerProfileScreenState extends State<OwnerProfileScreen> {

  @override
  void initState() {
    context.read<MyProductsCubit>().emitGetMyProduct();
        context.read<GetProfileCubit>().emitgetProfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
       
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<GetProfileCubit, GetProfileState>(
          listener: (context, state) => state.whenOrNull(    error: (error) => Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(error),
              toastLength: Toast.LENGTH_SHORT) ,),
          builder: (context, state) {
            return state.when(error: (networkExceptions) => const SizedBox.shrink(),loading: () => const Center(child: CupertinoActivityIndicator()),success: (baseProfileEntity) {
            return  _buildProfileData(baseProfileEntity);
            },);
          }
        ),
      ),
    );
  }
SingleChildScrollView _buildProfileData(BaseProfileEntity baseProfileEntity){
  return SingleChildScrollView(
    child: Column(
                children: [
                  SpaceItem(),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.mediumGolden1,
                        radius: 52.r,
                        child: CircleAvatar(
                          //  backgroundImage: Image.network(baseProfileEntity),
                          radius: 50.r,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                        child: FloatingActionButton(
                          onPressed: () {},
                          shape: CircleBorder(
                            side: BorderSide(
                              color: AppColors.mediumGolden1,
                            ),
                          ),
                          backgroundColor: AppColors.pureWhite,
                          elevation: 0.0,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: AppColors.mediumGolden1,
                            size: 20.r,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SpaceItem(),
                  Text(
                    baseProfileEntity.profile.firstName + baseProfileEntity.profile.lastName,
                    style: TextStyle(
                      color: AppColors.semiBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
              
                  SpaceItem(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                color: AppColors.mediumGolden1,
                              ),
                              Text(
                                baseProfileEntity.profile.phone,
                                style: TextStyle(
                                  color: AppColors.pureBlack,
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color: AppColors.mediumGolden1,
                              ),
                              Text(
                                baseProfileEntity.profile.address,
                                style: TextStyle(
                                  color: AppColors.pureBlack,
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceItem(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColors.mediumGolden1,
                              ),
                              Text(
                                baseProfileEntity.profile.gender,
                                style: TextStyle(
                                  color: AppColors.pureBlack,
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.cake_outlined,
                                color: AppColors.mediumGolden1,
                              ),
                              Text(
                                baseProfileEntity.profile.birthday,
                                style: TextStyle(
                                  color: AppColors.pureBlack,
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceItem(),
                  SizedBox(
                    height: 30.h,
                   width: 150,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfileScreen(baseProfileEntity: baseProfileEntity,)));
                      },
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: AppColors.semiDarkGolden,
                        ),
                      ),
                      backgroundColor: AppColors.pureWhite,
                      elevation: 0.0,
                      child: Text(
                        'Edit Information',
                        style: TextStyle(
                          color: AppColors.semiDarkGolden,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.mediumGolden1,
                                    AppColors.mediumGolden2,
                                    AppColors.mediumGolden1,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Company Subscription',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColors.pureWhite,
                                    fontFamily: 'Bahnschrift',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.mediumGolden1,
                                    AppColors.mediumGolden2,
                                    AppColors.mediumGolden1,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Material Subscription',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: AppColors.pureWhite,
                                      fontFamily: 'Bahnschrift',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceItem(),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 30.h,
                     width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.mediumGolden1,
                            AppColors.mediumGolden2,
                            AppColors.mediumGolden1,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          'Add Post',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.pureWhite,
                            fontFamily: 'Bahnschrift',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${baseProfileEntity.profile.firstName + baseProfileEntity.profile.lastName} Posts',
                          style: TextStyle(
                            color: AppColors.semiBlack,
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Show All',
                            style: TextStyle(
                              color: AppColors.gray,
                              fontFamily: 'bahnschrift',
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceItem(),
                  buildPostsList(),
                ],
              ),
  );
          
}
  Widget buildPostsList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 220.h,
        
        child: BlocConsumer<MyProductsCubit, MyProductsState>(
          listener: (context, state) => state.whenOrNull(
            error: (error) => Fluttertoast.showToast(
                msg: NetworkExceptions.getErrorMessage(error),
                toastLength: Toast.LENGTH_SHORT),
          ),
          builder: (context, state) {
            return state.when(
                loading: () => const CupertinoActivityIndicator(),
                success: (baseMyProductEntity) => ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          postItem(baseMyProductEntity, index),
                      separatorBuilder: (context, index) => SizedBox(width: 20.w),
                      itemCount: baseMyProductEntity.products.length,
                    ),
                error: (NetworkExceptions networkExceptions) => const SizedBox());
          },
        ),
      ),
    );
  }

  Widget postItem(BaseMyProductEntity baseMyProductEntity, int index) {
    return Column(
      children: [
        Container(
          height: 50,width: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailsScreen(product: baseMyProductEntity.products[index].productData,)));
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: baseMyProductEntity.products.isNotEmpty &&
                        baseMyProductEntity
                            .products[index].productData.photos.isNotEmpty
                    ? SizedBox(
                        height: 30.h,
                        width: 30,
                        child: CachedNetworkImage(
                          imageUrl: baseMyProductEntity
                              .products[index].productData.attributes[0].icon,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const Center(child: CupertinoActivityIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      )
                    : CupertinoActivityIndicator()
          
                ///todo:make this tomorrow
                ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          baseMyProductEntity.products[index].productData.name,
          style: TextStyle(
            color: AppColors.mediumGolden1,
            fontFamily: 'bahnschrift',
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}