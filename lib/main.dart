import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/componetization/menu/pages/about_sistem_page.dart';
import 'package:flutter_schemes/src/features/componetization/menu/pages/favorite_page.dart';
import 'package:flutter_schemes/src/features/componetization/menu/pages/my_courses_page.dart';
import 'package:flutter_schemes/src/features/componetization/menu/pages/my_profile_page.dart';
import 'package:flutter_schemes/src/features/componetization/menu/pages/register_pager.dart';
import 'src/features/componetization/menu/menu_page.dart';
import 'src/features/home/home_page.dart';
void main() {
  runApp(const FlutterSchemes());
}
class FlutterSchemes extends StatelessWidget {
  const FlutterSchemes({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/menu-page': (context) => const MenuPage(),
        '/my-profile': (context) => const MyProfilePage(),
        '/my-courses': (context) => const MyCoursesPage(),
        '/favorite': (context) => const FavoritePage(),
        '/about-system': (context) => const AboutSistemPage(),
        '/register': (context) => const RegisterPager(),
      },
    );
  }
}
