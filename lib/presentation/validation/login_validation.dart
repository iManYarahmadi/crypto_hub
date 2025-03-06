import 'dart:async';
import 'package:rxdart/rxdart.dart';

class LoginValidation {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(_validateEmail);
  Stream<String> get password => _password.stream.transform(_validatePassword);

  Stream<bool> get isFormValid =>
      CombineLatestStream.combine2(email, password, (e, p) => true).onErrorReturn(false);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  static final _validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      const emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
      if (email.isEmpty) {
        sink.addError('Email cannot be empty');
      } else if (!RegExp(emailPattern).hasMatch(email)) {
        sink.addError('Please enter a valid email');
      } else {
        sink.add(email);
      }
    },
  );

  static final _validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      const passwordPattern = r'^(?=.*@)[a-zA-Z0-9@]{8,}$';
      if (password.isEmpty) {
        sink.addError('Password cannot be empty');
      } else if (!RegExp(passwordPattern).hasMatch(password)) {
        sink.addError('Password must be at least 8 characters, contain @, and only English letters or numbers');
      } else {
        sink.add(password);
      }
    },
  );

  void dispose() {
    _email.close();
    _password.close();
  }
}