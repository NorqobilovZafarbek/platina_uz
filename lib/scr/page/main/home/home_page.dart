import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina_api/scr/common/widgets/app.dart';
import 'package:platina_api/scr/page/main/home/widgets/custom_text.dart';

import '../../../common/constants/app_color.dart';
import '../../../common/constants/app_icons.dart';
import 'widgets/custom_list_tile.dart';
import 'widgets/custom_navigation_bar.dart';
import 'widgets/custom_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int currenIndex = 0;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> list = ["zafarbek", "Sabrina", "Zafarek"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 3,
        toolbarHeight: 60.h,
        centerTitle: true,
        leading: DrawerButton(
          onPressed: () {
            if (scaffoldKey.currentState?.isDrawerOpen ?? true) {
              scaffoldKey.currentState?.closeDrawer();
            } else {
              scaffoldKey.currentState?.openDrawer();
            }
          },
        ),
        title: Image(
          width: 112.w,
          height: 32.h,
          image: AssetImage(AppIcons.logo),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(
              width: 18.r,
              height: 18.r,
              image: AssetImage(AppIcons.search),
            ),
          )
        ],
      ),
      body: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x33E6B9B9),
        drawer: Drawer(
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          child: Column(children: []),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "USD",
                        style: TextStyle(color: AppColors.blue),
                      ),
                      Text(
                        "11318.74",
                        style: TextStyle(color: AppColors.blue),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AppIcons.cloud),
                      Text(
                        "11318.74",
                        style: TextStyle(color: AppColors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(AppIcons.onSelectedRadio),
                                color: AppColors.blue,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Муҳим янгиликлар",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColors.blue,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.blue,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(AppIcons.test),
                          SizedBox(height: 10.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.blue,
                                  fontSize: 18.sp,
                                ),
                              ),
                              SizedBox(height: 10.r),
                              Text(
                                "Ўйлайман, шу ёшида илм олишга ҳаракат қиляпти. Сиз эса вақт ўтиб кетди, деб",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blue3,
                                  fontSize: 14.sp,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "давомини ўқиш",
                                    style: TextStyle(
                                      color: AppColors.ilk,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 7.r),
                              CustomText(
                                  text1: "Жамият", text2: "20 дақиқа аввал"),
                            ],
                          ),
                          CustomPost(),
                          CustomPost(),
                          CustomPost(),
                          CustomPost(),
                          CustomPost(),
                          CustomPost(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
