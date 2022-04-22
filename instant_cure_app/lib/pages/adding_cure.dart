import 'package:flutter/material.dart';
import 'package:instant_cure_app/utils/Data.dart';

class NewCure extends StatefulWidget {
  NewCure({Key? key}) : super(key: key);

  @override
  State<NewCure> createState() => _NewCureState();
}

class _NewCureState extends State<NewCure> {
  final TextEditingController title = TextEditingController();
  final TextEditingController sevirity = TextEditingController();
  final TextEditingController actionsToTake = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADD a Repeating DIS-EASE CURE"),
        actions: const [
          Icon(
            Icons.back_hand,
          )
        ],
      ),
      body: Container(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Title Field
              TextFormField(
                controller: title,
                validator: (value) {
                  //USERNAME VALIDATION
                  if (value!.isEmpty) {
                    return "Title cannot be empty";
                  } else if (value.length < 3) {
                    return "Title should be greater than 3 char ";
                  }
                  return null;
                },
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
                decoration: InputDecoration(
                  hintText: "Enter title of disease",
                  labelText: "Disease Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.lightBlue.shade400, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //Sevirity Field
              TextFormField(
                controller: sevirity,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "sevirity cannot be empty";
                  } else if (value.length < 6) {
                    return "sevirity length should be >6";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter Severity",
                  labelText: "Severity",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.lightBlue.shade400, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //ActionToTake Field
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 7,
                controller: actionsToTake,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "actionsToTake cannot be empty";
                  } else if (value.length < 6) {
                    return "actionsToTake length should be >6";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter Description",
                  labelText: "Description",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.lightBlue.shade400, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                  //done : the label text on the box of input field
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Adding the Cure to list
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    //if all fileds are valid
                    List<String> addthis = [
                      title.text,
                      sevirity.text,
                      actionsToTake.text
                    ];

                    setState(() {
                      Data.data.add(addthis);
                      //print(Data.data);
                    });
                    Navigator.pop(context, true);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Something is invalid"),
                      duration: Duration(milliseconds: 900),
                    ));
                  }
                },
                child: const Text("Add this"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
