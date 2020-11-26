import 'package:flutter/material.dart';
import 'package:sms_read/smsAutofill.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SmsAutofillScreen(),
    );
  }
}
