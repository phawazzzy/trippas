//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(CreateTrip());

class CreateTrip extends StatelessWidget {
  final List<String> menuList = ['Business', 'Education', 'Health', 'Vacation'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      DropdownButton(
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String newValue) {},
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[200], offset: Offset(1,1 )),
                          ]
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text(
                            'Add Trip',
                            style: TextStyle(fontFamily: 'nunito-bold'),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
