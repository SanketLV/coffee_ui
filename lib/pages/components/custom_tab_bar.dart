import 'package:coffee_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final tabs = [
    "Hot Coffee",
    "Cold Coffee",
    "Others",
  ];
  var selectedTab = "Hot Coffee";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs
          .map(
            (e) => GestureDetector(
              onTap: () => setState(() {
                selectedTab = e;
              }),
              child: Text(
                e,
                style: e == selectedTab ? boldStyle() : normalStyle(),
              ),
            ),
          )
          .toList(),
    );
  }

  TextStyle boldStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 18,
    );
  }

  TextStyle normalStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: greyColor,
      fontSize: 18,
    );
  }
}
