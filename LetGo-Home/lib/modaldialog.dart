import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ModalDialogScreen()
    );
  }


class ModalDialogScreen extends StatefulWidget {
  ModalDialogScreen({Key? key}) : super(key: key);
  @override
  _DenemeScreenState createState() => _DenemeScreenState();
}

class _DenemeScreenState extends State<ModalDialogScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("aaaaaaaaaaaaaaaaaaaa");
            AwesomeDialog(
              context: context,
              headerAnimationLoop: false,
              dialogType: DialogType.NO_HEADER,
              title: 'Register Status',
              desc: "Register Successfull",
              btnOkOnPress: () {
                print("bbbbbbbbbbbbbbbbb");
              },
              width: 400,
            )..show().then((value) {
              print("cccccccccccccccccccc");
            });
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
  




}
