import 'package:flutter/material.dart';

class Data {
  static String? title;
  static String? sevirity;
  static String? actions_to_take;

  //todo :List<Image> helpful_imgs;

  static List<List<String>> data = [
    ["Default", "Default Sevirity", '''Default'''],
  ];
  // static List<List<String>> data = [
  //   [
  //     "Running Nose",
  //     "Low Sevirity",
  //     '''Do not take medication for a day or two, let the nose run
  //       2. Drink warm water
  //       3. Take waff'''
  //   ],
  //   [
  //     "Acidity ",
  //     "Medium Sevirity",
  //     "Drink 2-3 glass of warm water and vomet it down"
  //   ],
  //   [
  //     "Head Ace",
  //     "Medium to Low Sevirity",
  //     "Apply zendubam on forehead and eyes & let all the water come out of eyes",
  //   ],
  //   [
  //     "Wet Cough",
  //     "Medium to Low Sevirity",
  //     '''  1.Hold the salty water in throat and do the thing
  //       2.Take waff (termeric and water boiled)
  //       3.Hold lavang in mouth''',
  //   ],
  //   [
  //     "Dry Cough",
  //     "Medium to Low Sevirity",
  //     '''  1.Hold the salty water in throat and do the thing
  //       2.Drink only warm water
  //       3.Hold addrak in mouth''',
  //   ],
  //   ["Body Pain", "Low to Berable", "Take rest as much as possible"],
  //   [
  //     "Inertia Nausea",
  //     "Medium to Low Sevirity",
  //     '''  1.Don't eat spicy or oily or fried food before or during travel
  //       2.Eat proper quantity of food,don't overeat or undereat
  //       3.Preferably sit on front seat and have good exposure to fresh air ''',
  //   ],
  // ];

  List<List<String>> getData() {
    return data;
  }

  int getLenght() {
    return data.length;
  }
}
