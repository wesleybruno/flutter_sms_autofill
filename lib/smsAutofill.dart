
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SmsAutofillScreen extends StatefulWidget {
  @override
  _SmsAutofillScreenState createState() => _SmsAutofillScreenState();
}

class _SmsAutofillScreenState extends State<SmsAutofillScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('SignCode'),
                onPressed: () async {
                  final sngCode = await SmsAutoFill().getAppSignature;
                  print(sngCode);
                },
              ),
              RaisedButton(
                child: Text('Listen'),
                onPressed: () async {
                  await SmsAutoFill().listenForCode;
                },
              ),
              PinFieldAutoFill(
                codeLength: 6,
                onCodeChanged: (val) {
                  print(val);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}