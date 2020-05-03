//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(CreateTrip());

class CreateTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//          color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
//                  SizedBox(width: 30.0),
                    Text(
                      'Create a Trip',
                      style: TextStyle(fontFamily: 'nunito-bold', fontSize: 25.0),
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          showCursor: false,
                          enableSuggestions: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Departure',
                            hintStyle: TextStyle(
                                fontFamily: 'nunito-bold', fontSize: 20.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                showCursor: false,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: 'Enter Date',
                                  hintStyle: TextStyle(
                                      fontFamily: 'nunito-bold', fontSize: 20.0),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: TextField(
                                showCursor: false,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: 'Enter Time',
                                  hintStyle: TextStyle(
                                      fontFamily: 'nunito-bold', fontSize: 20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          showCursor: false,
                          enableSuggestions: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Destination',
                            hintStyle: TextStyle(
                                fontFamily: 'nunito-bold', fontSize: 20.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                showCursor: false,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: 'Enter Date',
                                  hintStyle: TextStyle(
                                      fontFamily: 'nunito-bold', fontSize: 20.0),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: TextField(
                                showCursor: false,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: 'Enter Time',
                                  hintStyle: TextStyle(
                                      fontFamily: 'nunito-bold', fontSize: 20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DropDownWidget(),
                        SizedBox(height: 15),
                        RaisedButton(
                          elevation: 3.0,
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Container(
                            width: 200.0,
                            child: Center(
                              child: Text(
                                'Add Trip',
                                style: TextStyle(
                                    fontFamily: 'nunito-bold', fontSize: 20.0),
                              ),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List<String> _tripType = ['Business', 'Vacation', 'Health', 'Education'];
  String _selectedValue;
  @override
  Widget build(BuildContext context) {
    return new DropdownButton<String>(
      isExpanded: true,
      style: TextStyle(fontFamily: 'nunito-bold', color: Colors.grey.shade600, fontSize: 20.0),
      hint: Text('Trip Type'),
      value: _selectedValue,
      items: _tripType.map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedValue = newValue;
        });
      },
    );
  }
}
