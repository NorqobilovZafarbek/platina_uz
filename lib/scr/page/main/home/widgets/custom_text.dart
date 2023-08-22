import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constants/app_color.dart';

class CustomText extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 12.sp, color: AppColors.text1),
        ),
        SizedBox(width: 10.w),
        Text(
          text2,
          style: TextStyle(fontSize: 12.sp, color: AppColors.text2),
        ),
      ],
    );
  }
}
