import 'package:flutter/material.dart';

class AddLineRow extends StatefulWidget {
  @override
  _AddLineRowState createState() => _AddLineRowState();
}

class _AddLineRowState extends State<AddLineRow> {
  @override
  Widget build(BuildContext context) {
    String selectedObject;
    final item = ['bag', 'lap'];
    return Row(
      children: [
        //     Container(
        //   padding: EdgeInsets.only(left: 5, top: 2),
        //   decoration:
        //       BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
        //   width: 120,
        //   height: 25,
        //   child: Text('here'),
        // ),

        Container(
          padding: EdgeInsets.only(left: 5, top: 2),
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          width: 120,
          height: 25,
          child: DropdownButton(
              dropdownColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 12,
              underline: SizedBox(),
              style: TextStyle(color: Colors.black, fontSize: 18),
              value: selectedObject,
              onChanged: (value) {
                setState(() {
                  selectedObject = value;
                });
              },
              items: item.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList()),

          // TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(3),
          //       ),
          //     ),
          //   ),

          // ),
        ),
      ],
    );
  }
}
