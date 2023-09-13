import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(fontSize: 30),
        )),
        leading: Icon(
          Icons.add_business,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 60,
                height: 60,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                )),
          ),
          Text(
            "Jahirul Islam",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w500, color: Colors.green),
          ),
          RichText(
            text: TextSpan(
              text: 'My ',
              style: TextStyle(color: Colors.red, fontSize: 35, fontWeight: FontWeight.w700),
              children: [
                TextSpan(
                  text: 'phone',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
                TextSpan(
                  text: ' name',
                  style: TextStyle(fontSize: 30, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Nova 5T',
                  style: TextStyle(color: Colors.orange, fontSize: 35),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
