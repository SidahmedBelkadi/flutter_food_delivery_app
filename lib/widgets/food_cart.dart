import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class FoodCart extends StatelessWidget {
  final String title;
  final String ingrediant;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCart({
    super.key,
    required this.title,
    required this.ingrediant,
    required this.image,
    required this.price,
    required this.calories,
    required this.description,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        height: 400,
        width: 270,
        margin: const EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(34)),
                  color: kPrimaryColor.withOpacity(.09),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 181,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'With $ingrediant',
                      style: TextStyle(
                        color: kTextColor.withOpacity(.4),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(color: kTextColor.withOpacity(.65)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(calories),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
