import 'package:blocpattern/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Blocpattern extends Bloc<Events, int> {
  Blocpattern(int initialState) : super(initialState);
  @override
  Stream<int> mapEventToState(Events event) async* {
    switch (event) {
      case Events.add:
        yield state + 1;
        break;
      case Events.remove:
        yield state - 1;
        break;
    }
  }

  @override
  void onTransition(Transition<Events, int> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
