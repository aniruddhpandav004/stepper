import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  int step = 0;
  void continues()
  {
    if(step < 2)
      {
        step++;
      }
    notifyListeners();
  }
  void cancel()
  {
   if(step> 0)
     {
       step--;
     }
   notifyListeners();
  }
}