import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final String path;
  final void Function() onTap;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.path,
    required this.onTap,
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
        image: AssetImage(widget.path),
      ),
      onTap: widget.onTap,
    );
  }
}
