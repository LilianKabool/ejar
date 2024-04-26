// import 'dart:io';

// import 'package:ejar_v/core/constant/colors.dart';
// import 'package:ejar_v/core/params/edit_profile_params.dart';
// import 'package:ejar_v/data/user/entity/profile_entity.dart';
// import 'package:ejar_v/presentaion/owner/manager/cubit/edit_controller_cubit.dart';
// import 'package:ejar_v/presentaion/user/manager/cubit/edit_profile_cubit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// class EditProfileScreen extends StatelessWidget {
//   final BaseProfileEntity baseProfileEntity;

//   const EditProfileScreen({super.key, required this.baseProfileEntity});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: BlocBuilder<EditControllerCubit, EditControllerState>(
//             builder: (context, state) {
//               return Column(
//                 children: [
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   profileAvatar(state, context),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(8.0.r),
//                     child: TextFormField(
//                       controller:
//                           context.read<EditControllerCubit>().phoneController,
//                       decoration: InputDecoration(
//                         hintText: 'Phone Number',
//                         prefixIcon: Icon(Icons.phone),
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.phone,
//                       onChanged: (value) {
//                         context
//                             .read<EditControllerCubit>()
//                             .updatePhoneNumber(value);
//                       },
//                       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(8.0.r),
//                     child: TextFormField(
//                       controller:
//                           context.read<EditControllerCubit>().addressController,
//                       decoration: InputDecoration(
//                         hintText: 'Address',
//                         prefixIcon: Icon(Icons.location_on),
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.streetAddress,
//                       onChanged: (value) {
//                         context
//                             .read<EditControllerCubit>()
//                             .updateAddress(value);
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   BlocBuilder<EditProfileCubit, EditProfileState>(
//                     builder: (context, state) {
//                       return state.maybeWhen(orElse:() => CupertinoButton(
//                           color: AppColors.darkGolden,
//                           child: Text("Done"),
//                           onPressed: () {}),initial: () => CupertinoButton(
//                           color: AppColors.darkGolden,
//                           child: Text("Done"),
//                           onPressed: () {
//                             context.read<EditProfileCubit>().emitEditProfile(editProfileParams: EditProfileParams(phoneNumber: int.parse(context.read<EditControllerCubit>().phoneController.text), address: context.read<EditControllerCubit>().addressController.text, photo: context.read<EditControllerCubit>().updateImagePath()));
//                           })
//                           ,loading: () => const CupertinoActivityIndicator(), );
//                     },
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget profileAvatar(EditControllerState state, BuildContext context) {
//     return Stack(
//       alignment: AlignmentDirectional.bottomEnd,
//       children: [
//         ClipOval(
//           child: CircleAvatar(
//             backgroundColor: AppColors.mediumGolden1,
//             radius: 52,
//             child: state.imagePath != null
//                 ? Image.file(
//                     File(state.imagePath!),
//                     fit: BoxFit.fill,
//                   )
//                 : CircleAvatar(
//                     radius: 50,
//                   ),
//           ),
//         ),
//         SizedBox(
//           height: 30,
//           child: FloatingActionButton(
//             onPressed: () => pickImage(context),
//             shape:
//                 CircleBorder(side: BorderSide(color: AppColors.mediumGolden1)),
//             backgroundColor: AppColors.pureWhite,
//             elevation: 0.0,
//             child: Icon(Icons.camera_alt_outlined,
//                 color: AppColors.mediumGolden1, size: 20),
//           ),
//         ),
//       ],
//     );
//   }

//   Future<void> pickImage(BuildContext context) async {
//     try {
//       final imagePicker = ImagePicker();
//       final XFile? image =
//           await imagePicker.pickImage(source: ImageSource.gallery);
//       if (image != null) {
//         context.read<EditControllerCubit>().updateImagePath(image.path);
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     }
//   }
// }
