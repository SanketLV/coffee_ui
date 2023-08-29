import 'package:coffee_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var color = greyColor.withOpacity(0.8);
    return TextField(
      cursorColor: greyColor,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: color,
          ),
          hintText: "Search Your Coffee",
          hintStyle: TextStyle(
            color: color,
            fontSize: 14,
          )),
    );
  }
}
