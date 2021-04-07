import 'package:flutter/material.dart';

class TableSection extends StatefulWidget {
  @override
  _TableSectionState createState() => _TableSectionState();
}

class _TableSectionState extends State<TableSection> {
  Widget container(String text, double width) {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 2),
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      width: width,
      height: 25,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Items:'),
            ElevatedButton(
                onPressed: () {},
                child: Text('Add Line'),
                style: ElevatedButton.styleFrom(primary: Colors.black))
          ],
        ),
        Row(
          children: [
            container('ITEM', 150),
            container('QTY', 50),
            container('PRICE', 80),
            container('AMOUNT', 90)
          ],
        )
        //ListView.builder(itemCount: 1, itemBuilder: (ctx, i) => )
      ],
    );
  }
}
