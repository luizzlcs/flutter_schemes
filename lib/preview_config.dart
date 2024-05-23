import 'package:flutter/material.dart';

Widget buildPreview(BuildContext context, Widget child) {
  // You may need to initialize app state here

  // Wrap the MaterialApp with any widgets your app requires, such as
  // ProviderScope for Riverpod or BlocProvider for Bloc.
  return MaterialApp(
    
    theme: ThemeData.light(),
    // darkTheme: getDarkTheme(),
    home: child,
  );
}