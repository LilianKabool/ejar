import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ejar_v/data/owner/entity/my_products_entity.dart';
import 'package:ejar_v/presentaion/owner/manager/my_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ejar_v/core/constant/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerCategoriesGridItem extends StatelessWidget {
  const ShimmerCategoriesGridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.grey,
      child: Container(
        padding: EdgeInsets.all(1.0.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0.w),
            color: Colors.white,
            boxShadow: [BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 0.5,
    blurRadius: 2,
  )]),
      ),
    );
  }
}

class ShimmerCategoriesGrid extends StatelessWidget {
  const ShimmerCategoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return const ShimmerCategoriesGridItem();
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0.w,
        mainAxisSpacing: 3.0.h,
        childAspectRatio: 1,
      ),
    );
  }
}


class MyProductShowingAllScreen extends StatefulWidget {
  const MyProductShowingAllScreen({super.key});

  @override
  State<MyProductShowingAllScreen> createState() => _MyProductShowingAllScreenState();
}

class _MyProductShowingAllScreenState extends State<MyProductShowingAllScreen> {

  @override
  void initState() {
context.read<MyProductsCubit>().emitGetMyProduct();    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<MyProductsCubit, MyProductsState>(
            builder: (context, state) {
              return state.when(
                  loading: () => const ShimmerCategoriesGrid(),
                  error: (error) => const SizedBox.shrink(),
                  success: (entity) => entity.products.isEmpty
                      ? const SizedBox.shrink()
                      : GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: entity.products.length,
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return CategoriesGridItem(productEntity: entity.products[index]);
                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5.0.w,
                            mainAxisSpacing: 3.0.h,
                            childAspectRatio: 1,
                          ),
                        ));
            },
          )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesGridItem extends StatelessWidget {
  final ProductEntity productEntity;

  const CategoriesGridItem({Key? key, required this.productEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement your product tap logic here
      },
      child: Container(
        padding: EdgeInsets.all(1.0.w), // Use ScreenUtil for responsiveness
        color: Colors.white,
        child: Stack(
          children: [
            productEntity.productData.photos.isNotEmpty?
            CachedNetworkImage(
              imageUrl: productEntity.productData.image,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ):const Center(child: Icon(Icons.error,color: Colors.red,)),
            Positioned(
              bottom: 5.h,
              left: 5.w, 
              child: Text(
                productEntity.productData.name,
                softWrap: true,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ShimmerAdvertisementsSlider extends StatelessWidget {
  const ShimmerAdvertisementsSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[200]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 18.0.h,
            width: 90.0.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0.w),
                color: Colors.white),
          ),
        );
      },
      options: CarouselOptions(
        height: 15.0.h,
        aspectRatio: 9 / 16,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: 1,
    );
  }
}
