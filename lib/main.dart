import 'package:flutter/material.dart';
import './enum_file.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Services: Floor Style',
      home: MyApp(),
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodyText2: const TextStyle(color: Colors.black),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Color(0xFFE33535),
        ),
        //backgroundColor: const Color(0xFFFFA49F),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  services _value = services.Italian_Marble;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services: Floor Style',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white70,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFA49F),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 60, top: 70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(
              value: services.Italian_Marble,
              title: const Text("Italian Marble"),
              groupValue: _value,
              onChanged: (services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: services.Tiles,
              title: const Text("Tiles"),
              groupValue: _value,
              onChanged: (services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: services.Carpet,
              title: const Text("Carpet"),
              groupValue: _value,
              onChanged: (services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: services.Mozaik,
              title: const Text("Mozaik"),
              groupValue: _value,
              onChanged: (services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: services.Wooden_Floor,
              title: const Text("Wooden Floor"),
              groupValue: _value,
              onChanged: (services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    minimumSize: Size(70, 30),
                    maximumSize: Size(80, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
