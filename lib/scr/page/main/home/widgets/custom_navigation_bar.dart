import 'package:flutter/material.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currenIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.noActive,
      onTap: (value) {
        setState(() {
          currenIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.homeNoActive),
          ),
          activeIcon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.homeActive),
          ),
          label: "Асосий",
        ),
        BottomNavigationBarItem(
          icon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.newsNoActive),
          ),
          activeIcon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.newsNoActive),
          ),
          label: "Лента",
        ),
        BottomNavigationBarItem(
          icon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.trendingNoActive),
          ),
          activeIcon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.trendingActive),
          ),
          label: "Оммабоп",
        ),
        BottomNavigationBarItem(
          icon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.fileDocumentNoActive),
          ),
          activeIcon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.fileDocumentActive),
          ),
          label: "Мақола",
        ),
        BottomNavigationBarItem(
          icon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.playCircleNoActive),
          ),
          activeIcon: Image(
            width: 24,
            height: 24,
            image: AssetImage(AppIcons.playCircleActive),
          ),
          label: "Видео",
        ),
      ],
    );
  }
}
