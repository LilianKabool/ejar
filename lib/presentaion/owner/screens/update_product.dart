//
// //
// //   DateTime selectedDate = DateTime.now();
// //
// //   var selectCountry = ["Syria", "Lebanon", "Egypt", ""];
// //   var selectedCountry = "";
// //
// //   var selectCity = ["Damascus", "Homs", "Hama", ""];
// //   var selectedCity = "";
// //
// //   void _editName(context) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text(
// //             'Edit Name',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGolden1,
// //             ),
// //           ),
// //           content: TextField(
// //             controller: owner_name,
// //             onChanged: (value) {
// //               print(value);
// //             },
// //           ),
// //           actions: [
// //             FloatingActionButton(
// //               backgroundColor: AppColors.mediumGolden1,
// //               child: Text(
// //                 'Save',
// //                 style: TextStyle(
// //                   color: AppColors.pureWhite,
// //                   fontFamily: 'bahnschrift',
// //                 ),
// //               ),
// //               onPressed: () {
// //                 var result = BlocProvider.of<ChangeInfoCobit>(context)
// //                     .emitNameForUpdateProduct(owner_name.text);
// //                 owner_name.text = result;
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   EditName(context, BaseMyProductEntity baseMyProductEntity, int index) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'Name',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGray,
// //               fontSize: 16.sp,
// //             ),
// //           ),
// //           Row(
// //             children: [
// //               Expanded(
// //                 child: Container(
// //                   height: 40.h,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(10.r),
// //                     border: Border.all(
// //                       color: AppColors.mediumGolden1,
// //                     ),
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       //:todo  سؤال لمحمد كيف بدنا نجيب الداتا من الغيت بروداكتتتتتتت
// //                       '${baseMyProductEntity.products[index].productData.name}',
// //                       style: TextStyle(
// //                         fontFamily: 'bahnschrift',
// //                         fontSize: 16.sp,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               IconButton(
// //                 onPressed: () {
// //                   _editName(context);
// //                 },
// //                 icon: Icon(
// //                   Icons.edit,
// //                   color: AppColors.mediumGolden1,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget EditCaption(
// //       context, BaseMyProductEntity baseMyProductEntity, int index) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'Caption',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGray,
// //               fontSize: 16.sp,
// //             ),
// //           ),
// //           Row(
// //             children: [
// //               Expanded(
// //                 child: Container(
// //                   height: 100.h,
// //                   padding: EdgeInsets.symmetric(horizontal: 10.0),
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(10.r),
// //                     border: Border.all(
// //                       color: AppColors.mediumGolden1,
// //                     ),
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       //:todo get from back end
// //                       baseMyProductEntity
// //                           .products[index].productData.description,
// //                       style: TextStyle(
// //                         fontFamily: 'bahnschrift',
// //                         fontSize: 16.sp,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               IconButton(
// //                 onPressed: () {
// //                   _editCaption(context);
// //                 },
// //                 icon: Icon(
// //                   Icons.edit,
// //                   color: AppColors.mediumGolden1,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   void _editCaption(context) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text(
// //             'Edit Caption',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGolden1,
// //             ),
// //           ),
// //           content: TextField(
// //             controller: caption,
// //             onChanged: (value) {
// //               print(value);
// //             },
// //           ),
// //           actions: [
// //             FloatingActionButton(
// //               backgroundColor: AppColors.mediumGolden1,
// //               child: Text(
// //                 'Save',
// //                 style: TextStyle(
// //                   color: AppColors.pureWhite,
// //                   fontFamily: 'bahnschrift',
// //                 ),
// //               ),
// //               onPressed: () {
// //                 //:todo
// //                 var result = BlocProvider.of<ChangeInfoCobit>(context)
// //                     .emitCaptionForUpdateProduct(caption.text);
// //                 caption.text = result;
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   Widget EditStartDate(
// //       context, BaseMyProductEntity baseMyProductEntity, int index) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'Start Date',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGray,
// //               fontSize: 16.sp,
// //             ),
// //           ),
// //           Row(
// //             children: [
// //               Expanded(
// //                 child: Container(
// //                   height: 40.h,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(10.r),
// //                     border: Border.all(
// //                       color: AppColors.mediumGolden1,
// //                     ),
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       //:todo  تأكيد من محمممد
// //                       baseMyProductEntity.products[index].productData.startDate,
// //                       style: TextStyle(
// //                         fontFamily: 'bahnschrift',
// //                         fontSize: 16.sp,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               IconButton(
// //                 onPressed: () {
// //                   datePicker(context);
// //                 },
// //                 icon: Icon(
// //                   Icons.edit,
// //                   color: AppColors.mediumGolden1,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget EditLocation(
// //       GetFullCountriesEntity getFullCountriesEntity, int index) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'Location',
// //             style: TextStyle(
// //               color: AppColors.pureBlack,
// //               fontSize: 16.0.sp,
// //               fontFamily: 'Bahnschrift',
// //             ),
// //           ),
// //           SpaceItem(),
// //           Container(
// //             height: 55.h,
// //             child: DropdownButtonFormField<String>(
// //               isDense: true,
// //               value: getFullCountriesEntity.data[index].country.name,
// //               onChanged: (newValue) {
// //                 print(newValue);
// //               },
// //               items: selectCountry.map((String item) {
// //                 return DropdownMenuItem<String>(
// //                   value: item,
// //                   child: Text(
// //                     item,
// //                     style: TextStyle(
// //                       color: AppColors.mediumGray,
// //                       fontFamily: 'Bahnschrift',
// //                     ),
// //                   ),
// //                 );
// //               }).toList(),
// //               borderRadius: BorderRadius.circular(31.0),
// //               decoration: const InputDecoration(
// //                 labelText: 'County',
// //                 labelStyle: TextStyle(
// //                   color: AppColors.mediumGray,
// //                   fontFamily: 'Bahnschrift',
// //                 ),
// //                 enabledBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(
// //                     color: AppColors.gray,
// //                   ),
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5.0),
// //                   ),
// //                 ),
// //                 focusedBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(
// //                     color: AppColors.gray,
// //                   ),
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5.0),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SpaceItem(),
// //           Container(
// //             height: 55.h,
// //             child: DropdownButtonFormField<String>(
// //               isDense: true,
// //               value: selectedCity,
// //               onChanged: (newValue) {
// //                 print(newValue);
// //               },
// //               items: selectCity.map((String item) {
// //                 return DropdownMenuItem<String>(
// //                   value: item,
// //                   child: Text(
// //                     item,
// //                     style: TextStyle(
// //                       color: AppColors.mediumGray,
// //                       fontFamily: 'Bahnschrift',
// //                     ),
// //                   ),
// //                 );
// //               }).toList(),
// //               borderRadius: BorderRadius.circular(31.0),
// //               decoration: const InputDecoration(
// //                 labelText: 'City',
// //                 labelStyle: TextStyle(
// //                   color: AppColors.mediumGray,
// //                   fontFamily: 'Bahnschrift',
// //                 ),
// //                 enabledBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(
// //                     color: AppColors.gray,
// //                   ),
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5.0),
// //                   ),
// //                 ),
// //                 focusedBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(
// //                     color: AppColors.gray,
// //                   ),
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5.0),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget EditPriceWidget(context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //       child: Row(
// //         children: [
// //           Text(
// //             'Price',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGray,
// //               fontSize: 16.sp,
// //             ),
// //           ),
// //           SizedBox(
// //             width: 10.w,
// //           ),
// //           Expanded(
// //             child: Container(
// //               height: 40.h,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(10.r),
// //                 border: Border.all(
// //                   color: AppColors.mediumGolden1,
// //                 ),
// //               ),
// //               child: Center(
// //                 child: Text(
// //                   '${price.text}',
// //                   style: TextStyle(
// //                     fontFamily: 'bahnschrift',
// //                     fontSize: 16.sp,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           IconButton(
// //             onPressed: () {
// //               _editPrice(context);
// //             },
// //             icon: Icon(
// //               Icons.edit,
// //               color: AppColors.mediumGolden1,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   void _editPrice(context) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text(
// //             'Edit Price',
// //             style: TextStyle(
// //               fontFamily: 'bahnschrift',
// //               color: AppColors.mediumGolden1,
// //             ),
// //           ),
// //           content: TextField(
// //             controller: price,
// //             onChanged: (value) {
// //               print(value);
// //             },
// //           ),
// //           actions: [
// //             FloatingActionButton(
// //               backgroundColor: AppColors.mediumGolden1,
// //               child: Text(
// //                 'Save',
// //                 style: TextStyle(
// //                   color: AppColors.pureWhite,
// //                   fontFamily: 'bahnschrift',
// //                 ),
// //               ),
// //               onPressed: () {
// //                 var result = BlocProvider.of<ChangeInfoCobit>(context)
// //                     .emitPriceForUpdateProduct(price.text);
// //                 price.text = result;
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   Widget AttributeItem(context, int index) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20),
// //       child: GestureDetector(
// //         onTap: () {
// //           Navigator.push(context,
// //               MaterialPageRoute(builder: (context) => EditAttributeScreen()));
// //         },
// //         child: Container(
// //           decoration: BoxDecoration(
// //             border: Border.all(
// //               color: AppColors.pureBlack,
// //             ),
// //             borderRadius: BorderRadius.circular(20.r),
// //           ),
// //           child: Column(
// //             children: [
// //               ClipRRect(
// //                 borderRadius: BorderRadius.only(
// //                   topRight: Radius.circular(20.r),
// //                   topLeft: Radius.circular(20.r),
// //                 ),
// //                 child: Image(
// //                   image: AssetImage('assets/images/logo2.jpg'),
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 5.h,
// //               ),
// //               Text(
// //                 '${feature_name.text}',
// //                 style: TextStyle(
// //                   fontFamily: 'bahnschrift',
// //                   color: AppColors.pureBlack,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget buildAttributesList(context) =>  Container(
// //       height: 250.h,
// //       child: ListView.builder(
// //
// //         shrinkWrap: true,
// //         scrollDirection: Axis.horizontal,
// //         itemBuilder: (context, index) {
// //           return AttributeItem(context , index );
// //         },
// //         itemCount: 15,
// //       ),
// //     );
// //
// //   _deleteImage(BuildContext context) {
// //     return showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: Text(
// //           "do you want to delete this customer ?",
// //           style: TextStyle(
// //             fontFamily: 'bahnschrift',
// //             color: AppColors.semiBlack,
// //             fontSize: 16.sp,
// //           ),
// //         ),
// //         content: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: [
// //             TextButton(
// //               onPressed: () {},
// //               child: Text(
// //                 'Yes',
// //                 style: TextStyle(
// //                   color: AppColors.mediumGolden1,
// //                   fontFamily: 'bahnschrift',
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //             TextButton(
// //               onPressed: () {},
// //               child: Text(
// //                 'No',
// //                 style: TextStyle(
// //                   color: AppColors.mediumGolden1,
// //                   fontFamily: 'bahnschrift',
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   datePicker(BuildContext context) {
// //     showDatePicker(
// //       context: context,
// //       initialDate: selectedDate,
// //       //:todo get it  from back end
// //       firstDate: DateTime(2018),
// //       lastDate: DateTime(2100),
// //     ).then((value) {
// //       if (value == null) {
// //         return null;
// //       }
// //       var result = BlocProvider.of<ChangeInfoCobit>(context)
// //           .emitDateForUpdateProduct(value, false);
// //       print("this is result ${result}");
// //       start_date.text = result.toString();
// //       print("this is selectedDate ${start_date.text}");
// //     });
// //     return start_date;
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double screenWidth = MediaQuery.of(context).size.width;
// //     double screenHeight = MediaQuery.of(context).size.height;
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Edit Product',
// //           style: TextStyle(
// //             color: AppColors.semiDarkGolden,
// //             fontFamily: 'Bahnschrift',
// //             fontSize: 20.sp,
// //           ),
// //         ),
// //         centerTitle: true,
// //         leading: IconButton(
// //           onPressed: () {
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (context) => MainScreen()));
// //           },
// //           icon: Icon(
// //             Icons.chevron_left,
// //             color: AppColors.semiDarkGolden,
// //           ),
// //         ),
// //         actions: [
// //           BlocConsumer<UpdateProductCubit, UpdateProductState>(
// //             listener: (context, state) {
// //               state.whenOrNull(
// //                 success: (baseEntity) {
// //                   Navigator.pushReplacement(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => MainScreen(),
// //                       ));
// //                   return showAlertDialog(context, "تم تعديل المادة");
// //                 },
// //                 error: (error) {
// //                   return showAlertDialog(
// //                       context, NetworkExceptions.getErrorMessage(error));
// //                 },
// //               );
// //             },
// //             builder: (context, state) {
// //               return state.maybeWhen(
// //                 orElse: () {
// //                   return IconButton(
// //                     onPressed: () {
// //                       //:todo add id  سؤال ل صبااا
// //                       context.read<UpdateProductCubit>().emitUpdateProduct(
// //                               updateProductParams: UpdateProductParams(
// //                             productId: int.parse(productId.text),
// //                             name: owner_name.text,
// //                             description: caption.text,
// //                             englishDescription: enCaption.text,
// //                             price: double.parse(price.text),
// //                            // photo: ,
// //                             // attributeIds: attributeIds,
// //                             // attributeValues: attributeValues,
// //                             countryId: int.parse(countryId.text),
// //                             cityId: int.parse(cityId.text),
// //                             startDate: start_date.text,
// //                             engilshName: '',
// //                           ));
// //                     },
// //                     icon: Icon(
// //                       Icons.check,
// //                       color: AppColors.semiDarkGolden,
// //                     ),
// //                   );
// //                 },
// //                 initial: () {
// //                   return IconButton(
// //                     onPressed: () {},
// //                     icon: Icon(
// //                       Icons.check,
// //                       color: AppColors.semiDarkGolden,
// //                     ),
// //                   );
// //                 },
// //                 loading: () {
// //                   return const CircularProgressIndicator();
// //                 },
// //               );
// //             },
// //           ),
// //         ],
// //         bottom: PreferredSize(
// //           preferredSize: Size.fromHeight(1.0),
// //           child: DividerItem(),
// //         ),
// //       ),
// //       body: BlocBuilder<MyProductsCubit, MyProductsState>(
// //         builder: (context, state) {
// //           return ListView(
// //             children: [
// //               SpaceItem(),
// //               Stack(
// //                 alignment: Alignment.bottomCenter,
// //                 children: [
// //                   Image(
// //                     image: AssetImage('assets/images/logo2.jpg'),
// //                     width: double.infinity,
// //                     height: 200.h,
// //                   ),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Container(
// //                         height: 30.h,
// //                         width: 40.w,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                             topRight: Radius.circular(5.r),
// //                             bottomRight: Radius.circular(5.r),
// //                           ),
// //                           color: AppColors.mediumGolden1,
// //                         ),
// //                         child: FloatingActionButton(
// //                           onPressed: () {},
// //                           child: Icon(
// //                             Icons.edit,
// //                             color: AppColors.pureWhite,
// //                           ),
// //                           elevation: 0.0,
// //                           backgroundColor: AppColors.mediumGolden1,
// //                         ),
// //                       ),
// //                       Container(
// //                         height: 30.h,
// //                         width: 40.w,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                             topLeft: Radius.circular(5.r),
// //                             bottomLeft: Radius.circular(5.r),
// //                           ),
// //                           color: AppColors.mediumGolden1,
// //                         ),
// //                         child: FloatingActionButton(
// //                           onPressed: () {
// //                             _deleteImage(context);
// //                           },
// //                           child: Icon(
// //                             Icons.delete,
// //                             color: AppColors.pureWhite,
// //                           ),
// //                           elevation: 0.0,
// //                           backgroundColor: AppColors.mediumGolden1,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //               SpaceItem(),
// //           EditName();
// //               SpaceItem(),
// //               EditCaption(
// //                 context,
// //               ),
// //               SpaceItem(),
// //               DividerItem(),
// //               SpaceItem(),
// //               EditStartDate(context, index),
// //               SpaceItem(),
// //               DividerItem(),
// //               SpaceItem(),
// //               EditLocation(context),
// //               SpaceItem(),
// //               DividerItem(),
// //               SpaceItem(),
// //               EditPriceWidget(context),
// //               SpaceItem(),
// //               DividerItem(),
// //               SpaceItem(),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //                 child: Text(
// //                   'Features',
// //                   style: TextStyle(
// //                     fontFamily: 'bahnschrift',
// //                     color: AppColors.mediumGray,
// //                     fontSize: 16.sp,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 5.h,
// //               ),
// //               buildAttributesList(context),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constant/colors.dart';
import '../../auth/screens/main_screen.dart';

class OwnerEditProductScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var nameEnglishController = TextEditingController();
  var descriptionController = TextEditingController();
  var enDescriptionController = TextEditingController();
  var priceController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  var selectCountry = ["Syria", "Lebanon", "Egypt", ""];
  var selectedCountry = "";

  var selectCity = ["Damascus", "Homs", "Hama", ""];
  var selectedCity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Product',
          style: TextStyle(
            color: AppColors.semiDarkGolden,
            fontFamily: 'Bahnschrift',
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.semiDarkGolden,
          ),
        ),
      ),
      body: Column(
        children: [
          //:todo image picker
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage('assets/images/girl.png'),
                width: double.infinity,
                height: 200.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r),
                      ),
                      color: AppColors.mediumGolden1,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                        color: AppColors.pureWhite,
                      ),
                      elevation: 0.0,
                      backgroundColor: AppColors.mediumGolden1,
                    ),
                  ),
                  Container(
                    height: 30.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        bottomLeft: Radius.circular(5.r),
                      ),
                      color: AppColors.mediumGolden1,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                      //  _deleteImage(context);
                      },
                      child: Icon(
                        Icons.delete,
                        color: AppColors.pureWhite,
                      ),
                      elevation: 0.0,
                      backgroundColor: AppColors.mediumGolden1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter name in arabic ";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'name ',
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
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: TextFormField(
              controller: nameEnglishController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter name in english ";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'name ',
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
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: TextFormField(
              controller: descriptionController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter description ";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'description ',
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
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: TextFormField(
              controller: enDescriptionController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter description in english ";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'en_description ',
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
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: TextFormField(
              controller: priceController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter price ";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'price ',
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
          Container(
            height: 55.h,
            child: DropdownButtonFormField<String>(
              isDense: true,
              value: selectedCountry,
              onChanged: (newValue) {},
              items: selectCountry.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: AppColors.mediumGray,
                      fontFamily: 'Bahnschrift',
                    ),
                  ),
                );
              }).toList(),
              borderRadius: BorderRadius.circular(31.0),
              decoration: const InputDecoration(
                labelText: 'County',
                labelStyle: TextStyle(
                  color: AppColors.mediumGray,
                  fontFamily: 'Bahnschrift',
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 55.h,
            child: DropdownButtonFormField<String>(
              isDense: true,
              value: selectedCity,
              onChanged: (newValue) {},
              items: selectCity.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: AppColors.mediumGray,
                      fontFamily: 'Bahnschrift',
                    ),
                  ),
                );
              }).toList(),
              borderRadius: BorderRadius.circular(31.0),
              decoration: const InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(
                  color: AppColors.mediumGray,
                  fontFamily: 'Bahnschrift',
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: AppColors.mediumGolden1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '"start_date"',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2018),
                    lastDate: DateTime(2100),
                  );
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.mediumGolden1,
                ),
              ),
            ],
          ),
          //todo list view
        ],
      ),
    );
  }
}
