import 'dart:async';

bool login = true;

class LoginStreamer {
  // Stream
  LoginStreamer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.add(login);
    });
  }

  final _controller = StreamController<bool>();

  Stream<bool> get stream => _controller.stream;
}
