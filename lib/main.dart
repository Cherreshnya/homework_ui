import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _cityName(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cityDetail(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Padding _cityName() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: SizedBox(
      height: 45,
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          border: null,
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 3.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          hintText: "Enter City Name",
          hintStyle: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    ),
  );
}

Column _cityDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Murmansk Oblast, RU",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      Divider(),
      Text(
        "Friday, Mar 20, 2020",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      )
    ],
  );
}
