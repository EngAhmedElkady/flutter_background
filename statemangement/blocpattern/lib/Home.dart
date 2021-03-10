import 'package:blocpattern/blocpattern.dart';
import 'package:blocpattern/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<Blocpattern>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOCPATTERN"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  bloc.add(Events.remove);
                }),
            BlocBuilder<Blocpattern, int>(
              builder: (context, state) {
                return Text('$state');
              },
            ),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  bloc.add(Events.add);
                }),
          ],
        ),
      ),
    );
  }
}
