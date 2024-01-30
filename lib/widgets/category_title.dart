import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({
    super.key,
    required this.title,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold).copyWith(
          color: active ? kPrimaryColor : kTextColor.withOpacity(.4),
        ),
      ),
    );
  }
}
