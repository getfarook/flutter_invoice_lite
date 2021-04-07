import 'package:flutter/material.dart';
import 'package:flutter_invoice_lite/database/dataBase.dart';
import 'package:provider/provider.dart';

class CustomerEntry extends StatefulWidget {
  @override
  _CustomerEntryState createState() => _CustomerEntryState();
}

class _CustomerEntryState extends State<CustomerEntry> {
  //final List<String> subjects = ['hy', 'hi', 'yu'];
  String selectedObject = 'Alex Jones';
  @override
  Widget build(BuildContext context) {
    final customer = Provider.of<Data>(context).customers;
    final custname = customer.map((e) => e.custname).toList();
    final index =
        customer.indexWhere((element) => element.custname == selectedObject);
    print(index);
    final cuaddress = customer[index].custaddress;
    print(cuaddress);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Date :  '),
                Container(
                  width: 100,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Invoice No :  '),
                Container(
                  width: 100,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Customer :  '),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                    hint: Text('Selected Customer:'),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    underline: SizedBox(),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    value: selectedObject,
                    onChanged: (value) {
                      setState(() {
                        selectedObject = value;
                      });
                    },
                    items: custname.map<DropdownMenuItem<String>>((value) {
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
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text('Customer Address'),
        Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              cuaddress,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
