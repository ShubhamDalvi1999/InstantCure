import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instant_cure_app/utils/Data.dart';
import 'package:instant_cure_app/utils/animations.dart';
import 'package:instant_cure_app/widgets/CustomCard.dart';

class InstantCure extends StatefulWidget {
  InstantCure({Key? key}) : super(key: key);

  @override
  _InstantCureState createState() => _InstantCureState();
}

class _InstantCureState extends State<InstantCure> {
  AnimationData animation = AnimationData();

  @override
  Widget build(BuildContext context) {
    Map<int, Widget?> anim = animation.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cure to ur quantum scale problems"),
      ),
      body: Center(
        child: CarouselSlider.builder(
            itemCount: Data.data.length,
            itemBuilder: (context, index, realIndex) {
              return CustomCard(
                data: Data.data[index],
                gif: anim[index]!,
                index: index,
              );
            },
            options: CarouselOptions(height: 500)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 40),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
