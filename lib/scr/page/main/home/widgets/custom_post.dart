import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina_api/scr/page/main/home/widgets/custom_text.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';

class CustomPost extends StatefulWidget {
  const CustomPost({Key? key}) : super(key: key);

  @override
  State<CustomPost> createState() => _CustomPost();
}

class _CustomPost extends State<CustomPost> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Image.asset(AppIcons.postIcon),
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Иқтисодиётимиздаги “саратон”дан қачон қутуламиз?",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: AppColors.blue,
        ),
      ),
      subtitle: CustomText(text1: "Жамият",text2: "20 дақиқа аввал",),
    );
  }
}
