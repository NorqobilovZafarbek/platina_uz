import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';
import 'custom_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          child: SizedBox(
            width: 361.w,
            height: 240.h,
            child: Image(
              height: 240.h,
              width: 361.w,
              fit: BoxFit.fill,
              image: AssetImage(AppIcons.test),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18.sp,color: AppColors.blue,fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 15.h),
        Text(
          "Ўйлайман, шу ёшида илм олишга ҳаракат қиляпти. Сиз эса вақт ўтиб кетди, деб",
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 15.h),
        CustomText(text1: 'Жамият', text2: '20 дақиқа аввал'),
      ],
    );
  }
}
