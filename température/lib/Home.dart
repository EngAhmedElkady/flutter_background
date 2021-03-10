import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static final Routs = "1";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // class data
  double input, output;
  bool frin = true;

  //class function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("translater"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.grey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "enter the number",
                //labelText:,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide:
                      BorderSide(color: Colors.red, style: BorderStyle.solid),
                ),
              ),
              onChanged: (v) {
                try {
                  input = double.parse(v);
                } catch (e) {}
              },
            ),
            SizedBox(
              height: 15,
            ),
            RadioListTile(
                title: Text("finhite"),
                value: true,
                groupValue: frin,
                onChanged: (v) {
                  setState(() {
                    frin = v;
                  });
                }),
            SizedBox(
              height: 15,
            ),
            RadioListTile(
                title: Text("celeses"),
                value: false,
                groupValue: frin,
                onChanged: (v) {
                  setState(() {
                    frin = v;
                  });
                }),
            RaisedButton.icon(
              onPressed: () {
                output = frin ? (input - 32) / (5 / 6) : (input * 9 / 5) + 32;
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("output"),
                      content: frin
                          ? Text("the degree with cileces is: $output")
                          : Text("The degree with fihrinh is: $output"),
                    );
                  },
                );
              },
              icon: Icon(Icons.access_time),
              label: Text("enter"),
            ),
          ],
        ),
      ),
    );
  }
}
