import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

const request = 'http://192.168.0.128:5000/';
String la;

void main() {
  getHttp();
  runApp(MaterialApp(home: Home()));
}

void getHttp() async {
  la = 'string';
  try {
    var response = await Dio().get(request);
    print(response.data.toString());
  } catch (e) {
    print(e);
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Conexão"),
            centerTitle: true,
            backgroundColor: Colors.green),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text(la)],
          ),
        ));
  }
}
