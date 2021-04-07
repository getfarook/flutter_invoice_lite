import 'package:flutter/material.dart';
import 'package:flutter_invoice_lite/widgets/customerdetails.dart';
import 'package:flutter_invoice_lite/widgets/tablesectionwidget.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .8,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomerEntry(),
              TableSection(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Total Amount  '),
                  Container(
                    width: 150,
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
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    label: Text('SAVE')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
