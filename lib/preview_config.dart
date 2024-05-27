import 'package:flutter/material.dart';

Widget buildPreview(BuildContext context, Widget child) {
  
  return MaterialApp(
    
    theme: ThemeData.light(),
    home: child,
  );
}