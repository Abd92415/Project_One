import 'package:flutter/material.dart';

class DropDownMenuDepart extends StatefulWidget {
  const DropDownMenuDepart({super.key});

  @override
  State<DropDownMenuDepart> createState() => _DropDownMenuDepartState();
}

class _DropDownMenuDepartState extends State<DropDownMenuDepart> {
  static List<String> listDepartment = [
    'Food',
    'Sweets',
    'Clothes',
    'Perfums',
    'Hand-made'
  ];
  String dropDownValue = listDepartment.first;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        alignment: Alignment.centerLeft,
        child: DropdownMenu<String>(
          textStyle: const TextStyle(color: Colors.black),
          initialSelection: listDepartment.first,
          leadingIcon: const Icon(Icons.add_business),
          onSelected: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropDownValue = value!;
            });
          },
          dropdownMenuEntries:
              listDepartment.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(value: value, label: value);
          }).toList(),
        ));
  }
}
