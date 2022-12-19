import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/stepperProvider.dart';

class Stepperclass extends StatefulWidget {
  const Stepperclass({Key? key}) : super(key: key);

  @override
  State<Stepperclass> createState() => _StepperclassState();
}

class _StepperclassState extends State<Stepperclass> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;
  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stepper(
                  steps: [
                    Step(
                      title: Text("Account"),
                      content: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'Enter Email Address'),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(labelText: 'Enter Password'),
                          ),
                        ],
                      ),
                    ),
                    Step(
                      title: Text("Address"),
                      content: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'Enter Address'),
                          ),
                        ],
                      ),
                    ),
                    Step(
                      title: Text("Step3"),
                      content:Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'Enter Mobile Number'),
                          ),
                        ],
                      ),
                    ),
                  ],
                  currentStep: homeProviderTrue!.step,
                  onStepContinue: (){
                    homeProviderFalse!.continues();
                  },
                  onStepCancel: (){
                    homeProviderFalse!.cancel();
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
