import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;

  const CustomButtom({this.onTap, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onTap,
      // style: ElevatedButton.styleFrom(
      //   maximumSize: Size(width / 5, 50),
      // ),
      child: Text(title!),
    );
  }
}
