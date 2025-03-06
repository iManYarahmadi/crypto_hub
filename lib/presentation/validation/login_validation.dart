// lib/presentation/validation/login_validation.dart
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
        sink.addError('ایمیل نمی‌تونه خالی باشه');
      } else if (!RegExp(emailPattern).hasMatch(email)) {
        sink.addError('لطفاً یه ایمیل معتبر وارد کن');
      } else {
        sink.add(email);
      }
    },
  );

  static final _validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length < 6) {
        sink.addError('رمز عبور باید حداقل 6 کاراکتر باشه');
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