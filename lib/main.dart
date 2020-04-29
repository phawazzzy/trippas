import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trippas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(
          child: Scaffold(
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.add),
        ),
      )),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding:
            EdgeInsets.only(top: 24.0, left: 27.0, right: 19.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    'Hello, Arthur',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: 'nunito-bold'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '20 trips',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
                'Create Your trips with us',
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontFamily: 'nunito-extrabold',
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Flights();
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 20.0,
                      color: Colors.white
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Flights extends StatefulWidget {
  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Card(
//      height: 200.0,
//      padding: EdgeInsets.all(10.0),
//      decoration: BoxDecoration(
////        boxShadow: [
////          BoxShadow(color: Colors.grey, blurRadius: 25.0, spreadRadius: 5.0)
////        ],
//        shape: BoxShape.rectangle,
//        border: Border.all(
////          color: Colors.black12,
//          width: 1,
//        ),
//        borderRadius: BorderRadius.circular(12),
//      ),
//
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Lagos',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-bold'),
                ),
                Icon(FlatIcons.paper_plane_1),
                Text(
                  'London',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-bold'),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Mon, 23 2020',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-regular',
                      letterSpacing: 2.0),
                ),
                Text(
                  'Tue, 24 2020',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-regular',
                      letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '12.24 pm',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-regular',
                      letterSpacing: 2.0),
                ),
                Text(
                  '1.24 pm',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nunito-regular',
                      letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 60.0,
                  child: Center(
                    child: Text(
                      'Business',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      color: Colors.blue),
                ),
                IconButton(
                    icon: Icon(FlatIcons.more_1,),
                    onPressed: () {
                      print('this is the button');
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
