// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/details_screen.dart';
import 'package:fooddeliveryapp/widgets/category_title.dart';
import 'package:fooddeliveryapp/widgets/food_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Simple way to find \n Tasty food',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: 'All', active: true),
                CategoryTitle(title: 'Italian'),
                CategoryTitle(title: 'Asian'),
                CategoryTitle(title: 'Chinese'),
                CategoryTitle(title: 'Burgers'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                color: kBorderColor,
              ),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCart(
                  title: 'Vegan salad bowl',
                  ingrediant: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem ipsum is not a simply random text, it has roots in a piece of classical latin.',
                  image: 'assets/images/image_1.png',
                  price: 20,
                  calories: '420kcal',
                  press: () => Navigator.of(context).pushNamed('/details'),
                ),
                FoodCart(
                  title: 'Vegan salad bowl',
                  ingrediant: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem ipsum is not a simply random text, it has roots in a piece of classical latin.',
                  image: 'assets/images/image_2.png',
                  price: 20,
                  calories: '420kcal',
                  press: () => Navigator.of(context).pushNamed('/details'),
                ),
                FoodCart(
                  title: 'Vegan salad bowl',
                  ingrediant: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem ipsum is not a simply random text, it has roots in a piece of classical latin.',
                  image: 'assets/images/image_1.png',
                  price: 20,
                  calories: '420kcal',
                  press: () => Navigator.of(context).pushNamed('/details'),
                ),
                FoodCart(
                  title: 'Vegan salad bowl',
                  ingrediant: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem ipsum is not a simply random text, it has roots in a piece of classical latin.',
                  image: 'assets/images/image_2.png',
                  price: 20,
                  calories: '420kcal',
                  press: () => Navigator.of(context).pushNamed('/details'),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
