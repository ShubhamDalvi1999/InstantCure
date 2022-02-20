import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationData {
  Map<int, Widget> data = {
    0: Lottie.network(
        "https://assets1.lottiefiles.com/packages/lf20_dxeenrps.json",
        width: 60,
        height: 60),
    1: Lottie.network(
        "https://assets9.lottiefiles.com/packages/lf20_yqfmz78n.json",
        width: 200,
        height: 200),
    2: Lottie.network(
        "https://assets2.lottiefiles.com/packages/lf20_iy6aj3i3.json",
        width: 160,
        height: 160),
    3: Lottie.network(
        "https://assets1.lottiefiles.com/packages/lf20_dkljlzky.json",
        width: 100,
        height: 100),
    4: Lottie.network(
        "https://assets1.lottiefiles.com/packages/lf20_wcfa7utb.json",
        width: 160,
        height: 160),
    5: Lottie.network(
        "https://assets1.lottiefiles.com/private_files/lf30_lnZijR.json",
        width: 100,
        height: 100),
  };

  Map<int, Widget> getData() {
    return data;
  }

  int getLenght() {
    return data.length;
  }
}
