import 'dart:async';

import 'package:rxdart/rxdart.dart';

class PhoneNumberValidator {
  final _phoneNumberSubject = BehaviorSubject<String>();

  Stream<String> get phoneNumberStream =>
      _phoneNumberSubject.stream.transform(_validatePhoneNumber);

  Sink<String> get phoneNumberSink => _phoneNumberSubject.sink;

  static final _validatePhoneNumber = StreamTransformer<String, String>.fromHandlers(
    handleData: (phoneNumber, sink) {
      if (phoneNumber.isEmpty) {
        sink.addError('Please enter a phone number');
      } else if (!RegExp(r'^09[0-9]{9}$').hasMatch(phoneNumber)) {
        sink.addError('Enter a valid number like 09121251212');
      } else {
        sink.add(phoneNumber);
      }
    },
  );

  void dispose() {
    _phoneNumberSubject.close();
  }
}