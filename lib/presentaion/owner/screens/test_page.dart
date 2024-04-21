import 'dart:io';

import 'package:ejar_v/core/params/add_photo_to_product_params.dart';
import 'package:ejar_v/core/params/get_category_attribute_params.dart';
import 'package:ejar_v/core/params/get_subscription_params.dart';
import 'package:ejar_v/core/params/set_card_info_params.dart';
import 'package:ejar_v/core/params/subscripe_params.dart';
import 'package:ejar_v/core/params/update_product_params.dart';
import 'package:ejar_v/injection_container.dart';
import 'package:ejar_v/presentaion/owner/manager/active_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/add_photo_to_product_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/cubit/update_product_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/set_card_info_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/get_category_attributes_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/processing_orders_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/my_products_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/my_subscription_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/subscripe_cubit.dart';
import 'package:ejar_v/presentaion/owner/manager/subscription_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async{
               Directory tempDir = await getTemporaryDirectory();
            String tempPath = tempDir.path;

            // Create a temporary file with a unique name
            File tempFile = File('$tempPath/temp_image.jpg');

            // Write some dummy data to the temporary file
            await tempFile.writeAsString('This is a dummy image file.');
            File file = File('/Users/mhamad/Downloads/delete.svg');

              // context.read<SubscriptionCubit>().emitGetSubscription(getSubscriptionParams: GetSubscriptionParams(categoryId: 1));
                            // context.read<GetCategoryAttributesCubit>().emitGetCategoryAttribute(getCategoryAttributeParams: GetCategoryAttributeParams(categoryId: 67));
                            // context.read<ActiveSubscriptionCubit>().emitActiveSubscription();
                            // context.read<SubscripeCubit>().emitSubscripe(subscripeParams: SubscripeParams(subscriptionId: 1));
                            // context.read<SetCardInfoCubit>().emitSetCardInfo(setCardInfoParams: SetCardInfoParams(nb: "asdasd",code: "asdasd"));
//!still Add photo to test it and update product
                            // context.read<AddPhotoToProductCubit>().emitAddPhotoToProduct(addPhotoToProductParams: AddPhotoToProductParams(photo: file,productId: 2688));

              //               context.read<UpdateProductCubit>().emitUpdateProduct(updateProductParams: UpdateProductParams(
              //   productId: 2687,
              //   name: 'Updated Product',
              //   engilshName: 'Updated Product',
              //   description: 'Updated Description',
              //   englishDescription: 'Updated Description',
              //   price: 100.0,
              //   photo: file,
              //   attributeIds: [1, 2, 3],
              //   attributeValues: ['Value 1', 'Value 2', 'Value 3'],
              //   countryId: 1,
              //   cityId: 1,
              //   startDate: "27-22-2222",
              // ),);

            },
            child: Text("test")),
      ),
    );
  }
}
