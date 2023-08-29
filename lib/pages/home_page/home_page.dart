import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/models/coffee.dart';
import 'package:coffee_ui/pages/components/AppBarWidget.dart';
import 'package:coffee_ui/pages/components/coffee_tile.dart';
import 'package:coffee_ui/pages/components/custom_search_bar.dart';
import 'package:coffee_ui/pages/components/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBarSize = size.height / 3;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: size.height,
            ), // HACK! stack was hidding the row, so mouse was not working. This invisible sizedBox solves the problem :)
            AppBarWidget(
              height: appBarSize,
            ),
            Positioned(
              top: appBarSize - 25,
              child: Container(
                padding: const EdgeInsets.all(padding),
                height: size.height - appBarSize + 25,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                        Column(
                          children: const [
                            CustomTabBar(),
                            SizedBox(
                              height: 16,
                            ),
                            CustomSearchBar(),
                          ],
                        ),
                      ] +
                      coffees.map((e) => CoffeeTile(coffee: e)).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
