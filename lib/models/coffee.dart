class Coffee {
  final String name;
  final String smallDescription;
  final String description;
  final String price;
  final String image;
  Coffee(this.name, this.price, this.image, this.smallDescription,
      this.description);
}

var coffees = [
  Coffee("Americano", "Rp 15.000", "assets/c3.png", "Expresso with hot water..",
      "Americano is an espresso drink much like cappuccinos and lattes. It is made entirely from espresso and water, giving it a similar consistency to drip coffee. It is heavily aromatic and bold."),
  Coffee("Cappuccino", "Rp 25.000", "assets/c2.png", "Expresso with cream..",
      "Cappuccino is a coffee drink made from a mixture of espresso and steamed milk. A traditional Italian cappuccino is generally a single (or sometimes a double) espresso shot topped with equal parts steamed and frothed milk."),
  Coffee("Macchiato", "Rp 25.000", "assets/c1.png", "Expresso with milk..",
      "Macchiato is an espresso coffee drink with a small amount of milk, ussualy foamed. In Italian, macchiato means \"stained\" or \"spotted\" so the literal translation of caffé macchiato is \"stained\" or \"marked coffee\".")
];
