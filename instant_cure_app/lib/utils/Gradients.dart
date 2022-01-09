import 'package:flutter/material.dart';

class Gradients {
  Gradients() {}
  LinearGradient gradient3() {
    return const LinearGradient(
      colors: [Colors.blue, Colors.green],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  LinearGradient gradient4() {
    return LinearGradient(
      colors: [Colors.blue, Colors.blue.shade900],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  LinearGradient gradient2() {
    return const LinearGradient(
      colors: [Colors.purple, Colors.red],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  LinearGradient gradient1() {
    return const LinearGradient(
      colors: [Color(0xff4338CA), Color(0xff6D28D9)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  LinearGradient gradient5() {
    return const LinearGradient(
      colors: [Colors.orange, Colors.yellow],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  LinearGradient getGradiant(int index) {
    LinearGradient magic;
    switch (index) {
      case 0:
        magic = gradient1();
        break;
      case 1:
        magic = gradient2();
        break;
      case 2:
        magic = gradient3();
        break;
      case 3:
        magic = gradient4();
        break;
      default:
        magic = gradient5();
    }
    return magic;
  }
}
