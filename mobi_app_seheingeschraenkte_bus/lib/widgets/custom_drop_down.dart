import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart'; // For SemanticsService

class CustomDropdown extends StatefulWidget {
  final List<String> dropdownItemList;
  final String selectedValue;
  final ValueChanged<String> onChanged;

  const CustomDropdown({
    Key? key,
    required this.dropdownItemList,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String currentSelectedValue;

  @override
  void initState() {
    super.initState();
    currentSelectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          "Optionen für Sprachansagen bei ankommenden Bussen. Aufklappbares Menü",
      hint:
          "Wählen Sie zwischen den Optionen 3 oder 1 Minute vor Ankunft oder Bei Ankunft",
      button: true,
      container: true,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        width: double.maxFinite,
        child: DropdownButton<String>(
          isExpanded: true,
          value: currentSelectedValue,
          icon: Icon(Icons.arrow_drop_down),
          onChanged: null,
          items: widget.dropdownItemList
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
