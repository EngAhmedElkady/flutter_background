import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  static String Routs = "4";
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  //class data
  int valuecolor = Colors.white.value;
  SharedPreferences pref;

  //methods
  @override
  initState() {
    super.initState();
    getcolor();
  }

  setcolor() async {
    pref = await SharedPreferences.getInstance();
    pref.setInt('colors', valuecolor);
  }

  getcolor() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      valuecolor = pref.get('colors') ?? Colors.amber.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(valuecolor),
      appBar: AppBar(),
      body: Column(
        children: [
          Text("select your color"),
          RadioListTile(
              title: Text("green"),
              value: Colors.green.value,
              groupValue: valuecolor,
              onChanged: (v) {
                setState(() {
                  valuecolor = v;
                  setcolor();
                });
              }),
          RadioListTile(
              value: Colors.red.value,
              title: Text("red"),
              groupValue: valuecolor,
              onChanged: (v) {
                setState(() {
                  valuecolor = v;
                  setcolor();
                });
              }),
          RadioListTile(
              value: Colors.blue.value,
              title: Text("blue"),
              groupValue: valuecolor,
              onChanged: (v) {
                setState(() {
                  valuecolor = v;
                  setcolor();
                });
              }),
        ],
      ),
    );
  }
}
