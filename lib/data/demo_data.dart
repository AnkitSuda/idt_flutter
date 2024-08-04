import 'package:idt_flutter/data/model/product.dart';

const demoProducts = [
  Product(
    id: "test1",
    name: "Maggi",
    description:
        "Maggi is a brand of food products from Nestlé that includes noodles, sauces, herb and spice mixes, and cubes. Maggi products are made with high-quality ingredients and are designed to be easy to prepare.",
    // Score out of 100
    scoreFatLoss: 30,
    scoreMuscleGain: 50,
    image: "assets/maggie.png",
  ),
  Product(
    id: "test2",
    name: "Britannia White Bread",
    description:
        "Soft white sandwich bread Wholesome and delicious. Made using the finest quality ingredients. Perfect to treat your palate to delicious taste. Packed with the goodness of Vitamin B",
    // Score out of 100
    scoreFatLoss: 30,
    scoreMuscleGain: 70,
    image: "assets/white_bread.webp",
  ),
  Product(
    id: "test3",
    name: "Amul Salted Butter",
    description:
    "Made from the freshest of cream, the Amul butter has lovely taste which is delicate and slightly salty. This finely processed butter is natural, pure and tastes best overwith toasts and sandwiches. Has a natural and pure formulation that gives it a great taste. Made from fresh cream that has a wonderful flavour. Spread it over toast or cook your curries in it for a heavenly taste.",
    // Score out of 100
    scoreFatLoss: 20,
    scoreMuscleGain: 75,
    image: "assets/amul.webp",
  )
];
