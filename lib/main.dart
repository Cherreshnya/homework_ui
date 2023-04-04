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
                Divider(
                  height: 30,
                ),
                _temperatureDetail(),
                Divider(),
                _extraDetail(),
                Divider(
                  height: 30,
                ),
                _forecastWether(),
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

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.sunny,
          color: Colors.white,
          size: 80,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "14°F ",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Text(
              "LIGHT SNOW",
              style: TextStyle(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      )
    ],
  );
}

Padding _extraDetail() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 35,
            ),
            Text(
              "5",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              "km/hr",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 35,
            ),
            Text(
              "3",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              "%",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 35,
            ),
            Text(
              "20",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              "%",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _forecastWether() {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Fryday",
    "Saturday",
    "Sunday"
  ];
  List<String> degree = ["6", "22", "15", "17", "27", "10", "9"];
  return SizedBox(
    width: 400,
    height: 150,
    child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.horizontal,
        itemExtent: 180,
        itemCount: days.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                tileColor: Colors.red.shade200,
                title: SizedBox(
                width: 110,
                  height: 60,
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        days[index],
                        style:  TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${degree[index]}°F ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                     Icon(
                      Icons.sunny,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
        }),
  );
}
