import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

//   multiselect: ^0.1.0
class CustomMultipleSelectBox extends StatefulWidget {
  const CustomMultipleSelectBox({Key? key}) : super(key: key);

  @override
  CustomMultipleSelectBoxState createState() => CustomMultipleSelectBoxState();
}

class CustomMultipleSelectBoxState extends State<CustomMultipleSelectBox> {
  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        // DropDownMultiSelect comes from multiselect
        child: DropDownMultiSelect(
          onChanged: (List<String> x) {
            setState(() {
              selected = x;
              print(selected);
            });
          },
          options: const ['a', 'b', 'c', 'd'],
          selectedValues: selected,
          whenEmpty: 'Select Something',
        ),
      ),
    ));
  }
}
