import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina_api/scr/common/service/api_service.dart';
import 'package:platina_api/scr/data/repository.dart';
import 'package:platina_api/scr/page/main/home/widgets/custom_card.dart';
import 'package:platina_api/scr/page/main/home/widgets/custom_list_tile.dart';

import '../../../common/constants/app_color.dart';
import '../../../common/constants/app_icons.dart';
import '../../../data/categories.dart';
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
  bool res = false;

  late PlatinaRepository repository;

  List<CategoriesModel> categories = [];

  @override
  void initState() {
    repository = PlatinaRepositoryImpl(APIService());
    getAllCategories();
    super.initState();
  }

  void getAllCategories() async {
    categories = await repository.getAllCategories();
    print(categories);
  }

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
            setState(() {});
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
        backgroundColor: Colors.white,
        drawerScrimColor: Color(0x991D3068),
        drawer: Drawer(
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          child: Column(
            children: categories.isNotEmpty
                ? categories
                    .map(
                      (e) => CustomListTile(
                        title: e.slug!,
                        isCelected: res,
                        color: int.parse("0xFF${e.color!.substring(1)}"),
                        onTap: () {
                          res = !res;
                          setState(() {});
                        },
                      ),
                    )
                    .toList()
                : [
                    CircularProgressIndicator(),
                  ],
          ),
        ),
        body: Builder(builder: (context) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomCard(),
                    SizedBox(height: 20.h),
                    CustomPost(),
                  ],
                ),
              ),
              (scaffoldKey.currentState!.isDrawerOpen)
                  ? BackdropFilter(
                      child: SizedBox.expand(),
                      filter: ImageFilter.blur(
                          sigmaY: 4, sigmaX: 4, tileMode: TileMode.clamp),
                    )
                  : SizedBox(),
            ],
          );
        }),
      ),
    );
  }
}
