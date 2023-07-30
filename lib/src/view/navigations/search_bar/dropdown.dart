import 'package:flutter/material.dart';

class MyListTileWithDropdown extends StatefulWidget {
  @override
  _MyListTileWithDropdownState createState() => _MyListTileWithDropdownState();
}

class _MyListTileWithDropdownState extends State<MyListTileWithDropdown> {
  String selectedOption = 'Traveller';
  List<String> dropdownOptions = ['Traveller', 'Economy', 'Business', 'None'];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black26,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(
                  Icons.supervisor_account,
                  color: Colors.white70,
                ),
              ),
              DropdownButton<String>(
                value: selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
                items: dropdownOptions.map((option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(
                      option,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }).toList(),
                underline: Container(), // Remove the underline from the dropdown
                dropdownColor: Colors.black26, // Customize the dropdown background color
                iconEnabledColor: Colors.white70, // Customize the dropdown icon color
              ),
            ],
          ),
        ),
      ),
    );
  }
}

