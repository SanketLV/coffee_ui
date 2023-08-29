import 'package:coffee_ui/constants.dart';
import 'package:flutter/material.dart';
import '../../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key, required this.coffee});
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    var tileHeight = 120.0;
    return SizedBox(
      height: tileHeight,
      child: Row(
        children: [
          getImage(tileHeight),
          coffeeDetails(),
          const Spacer(),
          plusIcon(),
        ],
      ),
    );
  }

  Container plusIcon() {
    return Container(
      height: 25,
      width: 25,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image.asset(
        "assets/icons/plus.png",
        color: Colors.white,
      ),
    );
  }

  Padding coffeeDetails() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: padding,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          boldText(coffee.name),
          const Spacer(),
          Text(
            coffee.smallDescription,
            style: const TextStyle(
                fontSize: 16, color: greyColor, fontWeight: FontWeight.w500),
          ),
          const Spacer(
            flex: 5,
          ),
          boldText(coffee.price),
        ],
      ),
    );
  }

  Text boldText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
    );
  }

  Container getImage(double tileHeight) {
    return Container(
      height: tileHeight,
      width: tileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(coffee.image),
        ),
      ),
    );
  }
}
