import 'package:flutter/material.dart';

class Interaction extends StatefulWidget {
  const Interaction({super.key});

  @override
  State<Interaction> createState() => _InteractionState();
}

class _InteractionState extends State<Interaction> {
  var message = "";
  var checkboxStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [Text("$checkboxStatus"), _buidlCheckBox()]),
      ),
    );
  }

  ElevatedButton _buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        print("Elevated Button Pressed");
      },
      child: Text("I am choco-btn"),
    );
  }

  TextField _buildTestField() {
    return TextField(
      onChanged: (value) {
        setState(() {
          message = value;
        });
      },
    );
  }

  TextFormField _buildTextFormField() {
    return TextFormField(
      onChanged: (value) {
        print(value);
      },

      validator: (value) {
        if (value == "") {
          return "Field cannot be empty";
        }
      },
    );
  }

  Checkbox _buidlCheckBox() {
    return Checkbox(
      value: checkboxStatus,
      onChanged: (val) {
        setState(() {
          checkboxStatus = !checkboxStatus;
        });
      },
    );
  }
}
