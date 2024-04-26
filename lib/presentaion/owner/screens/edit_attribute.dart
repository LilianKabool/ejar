import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/colors.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';

class EditAttributeScreen extends StatefulWidget{

  @override
  State<EditAttributeScreen> createState() => _EditAttributeScreenState();
}

class _EditAttributeScreenState extends State<EditAttributeScreen> {

  String feature_name = 'Gasoline';
  String editedFeatureName = '';

  void _editFeatureName() {
    TextEditingController feature_name_controller =
    TextEditingController(text: feature_name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Feature Name',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.mediumGolden1,
            ),
          ),
          content: TextField(
            controller: feature_name_controller,
            onChanged: (value) {
              editedFeatureName = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.mediumGolden1,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  feature_name = editedFeatureName;
                });
                feature_name_controller.text = feature_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget EditFeatureName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feature Name',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.mediumGray,
              fontSize: 16.sp,
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
                      '${feature_name}',
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
                  _editFeatureName();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.mediumGolden1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _deleteAttribute(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "do you want to delete this attribute ?",
          style: TextStyle(
            fontFamily: 'bahnschrift',
            color: AppColors.semiBlack,
            fontSize: 16.sp,
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Yes',
                style: TextStyle(
                  color: AppColors.mediumGolden1,
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'No',
                style: TextStyle(
                  color: AppColors.mediumGolden1,
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Attribute',
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
        actions: [
          IconButton(
            onPressed: () {
              _deleteAttribute(context);
            },
            icon: Icon(
              Icons.delete,
              color: AppColors.semiDarkGolden,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: (){
                // وقت تكبسي هون بتطلع الايميج بيكر وبتختاري صورة جديدة
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.mediumGolden1,
                  ),
                ),
                child: Image(
                  image: AssetImage('assets/images/girl.png'),
                  width: double.infinity,
                  // height: 200.h,
                ),
              ),
            ),
          ),
          SpaceItem(),
          SpaceItem(),
          EditFeatureName(),
          SpaceItem(),
          SpaceItem(),
        ],
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: (){},
        shape: CircleBorder(
          side: BorderSide(
            color: AppColors.mediumGolden1,
          ),
        ),
        backgroundColor: AppColors.mediumGolden1,
        elevation: 0.0,
        child: Icon(
          Icons.check,
          color: AppColors.pureWhite,
        ),
      ),
    );
  }
}