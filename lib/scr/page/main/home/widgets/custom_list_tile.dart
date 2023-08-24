import 'package:flutter/material.dart';

import '../../../../common/constants/app_icons.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final int color;
  final void Function() onTap;
  bool isCelected;

  CustomListTile({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
    this.isCelected = false,
  }) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTile();
}

class _CustomListTile extends State<CustomListTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: Image(
        color: widget.isCelected ? Color(widget.color) : Colors.transparent,
        image: AssetImage(AppIcons.onSelectedRadio),
      ),
      onTap: widget.onTap,
    );
  }
}
