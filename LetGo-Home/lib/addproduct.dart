import 'package:flutter/material.dart';





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AddProductScreen()
    );
  }


class AddProductScreen extends StatefulWidget {
  AddProductScreen({Key? key}) : super(key: key);
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Stepper"),
      ),
      body: Stepper(
        steps:getSteps(),
        currentStep: currentStep,
        onStepTapped: (int step)
        {
          setState(() {
            currentStep = step;
          });
        },
        onStepCancel: ()
        {
          currentStep > 0 ?
          setState(() => currentStep -= 1) : null;
        },
        onStepContinue: ()
        {
          currentStep < 2 ?
          setState(() => currentStep += 1): null;
        },
      ),
    );
  }
  
  List<Step> getSteps()
  {
    return[
      Step(
        title: new Text('Personal Info'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
          ],
        ),
        isActive: currentStep >= 0,
        state: currentStep == 0 ?
        StepState.editing : StepState.complete,
      ),
      Step(
        title: new Text('Address Details'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Home Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile No'),
            ),
          ],
        ),
        isActive: currentStep >= 1,
        state: currentStep == 1 ?
        StepState.editing : currentStep < 1 ? StepState.disabled: StepState.complete,
      ),
      Step(
        title: new Text("Bank Details"),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Account No'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'IFSC Code'),
            ),
          ],
        ),
        isActive:currentStep >= 2,
        state: currentStep == 2 ?
        StepState.editing : currentStep < 2 ? StepState.disabled: StepState.complete,
      ),
    ];
  }
}
