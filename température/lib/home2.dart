import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  static final Routs = '2';

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  //class data
  var infcontroler = TextEditingController();
  var cilcontroler = TextEditingController();

  double intfrin = 0.0, intcil = 0.0;
  bool isf = true;
  //class function
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    infcontroler.addListener(inflist);
    cilcontroler.addListener(cilist);
  }

  //1-
  inflist() {
    intfrin = double.parse(infcontroler.text);
    intcil = convert(intfrin, true);
    cilcontroler.text = intcil.toString();
  }

  //2-
  cilist() {
    intcil = double.parse(cilcontroler.text);
    intfrin = convert(intcil, false);
    infcontroler.text = intfrin.toString();
  } //3-

  double convert(double x, bool y) {
    return y ? (x - 32) * (5 / 9) : (x * 9 / 5) + 32;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo2 temp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "fihren",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: infcontroler,
                        decoration: InputDecoration(
                          suffix: Text("f"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "cile",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffix: Text("c"),
                        ),
                        controller: cilcontroler,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
