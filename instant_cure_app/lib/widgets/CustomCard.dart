import 'package:flutter/material.dart';
import 'package:instant_cure_app/utils/Gradients.dart';

class CustomCard extends StatelessWidget {
  CustomCard(this.data, this.index, {Key? key}) : super(key: key);
  final List<String> data;
  final int index;
  Gradients g = new Gradients();
  @override
  Widget build(BuildContext context) {
    String title = data[0];
    String sevirity = data[1];
    String discription = data[2];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              gradient: g.getGradiant(index),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius:
                  BorderRadius.circular(35.0), //this took 10 min to figure out
            ),
            child: Column(
              children: [
                ListTile(
                    leading: const Icon(Icons.album, size: 60),
                    title: Text('$index $title',
                        style: const TextStyle(fontSize: 30.0)),
                    subtitle: Text('$sevirity',
                        style: const TextStyle(fontSize: 18.0))),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$discription",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const FlutterLogo(
                  size: 70,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 100,
                      height: 50,
                      child: RaisedButton(
                        padding: EdgeInsets
                            .zero, //this took me 45 min to figure out lol
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0)),
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.orange, Colors.yellow]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Cure It',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onPressed: () {/* ... */},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
