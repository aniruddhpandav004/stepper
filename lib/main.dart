import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/stepper.dart';
import 'package:stepper/stepperProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Stepperclass(),
        },
      ),
    ),
  );
}
