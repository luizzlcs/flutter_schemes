import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/componetization/pages/about_sistem_page.dart';
import 'package:flutter_schemes/src/features/componetization/pages/favorite_page.dart';
import 'package:flutter_schemes/src/features/componetization/pages/my_courses_page.dart';
import 'package:flutter_schemes/src/features/componetization/pages/my_profile_page.dart';
import 'package:flutter_schemes/src/features/componetization/pages/register_pager.dart';
import 'package:flutter_schemes/src/features/counter/couter_page.dart';
import 'src/core/injection/injection.dart';
import 'src/features/componetization/menu/menu_page.dart';
import 'src/features/componetization/pages/certificate_pager.dart';
import 'src/features/counter/page_counter2.dart';
import 'src/features/counter_stateless/couter_stateless_page.dart';
import 'src/features/home/home_page.dart';
import 'src/features/injection_get_it/pages/home_get_it_page.dart';
import 'src/features/injection_get_it/pages/login_page.dart';
import 'src/features/listTitle/switch_list_tile_example.dart';

void main() {
  configureDependencies();
  
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
        '/': (context) => const HomePage(),
        '/menu-page': (context) => MenuPage(),
        '/my-profile': (context) => const MyProfilePage(),
        '/my-courses': (context) => const MyCoursesPage(),
        '/favorite': (context) => const FavoritePage(),
        '/about-system': (context) => const AboutSistemPage(),
        '/register': (context) => const RegisterPager(),
        '/certificate': (context) => const CertificatePager(),
        '/switch': (context) => const SwitchListTileExample(),
        '/couter': (context) => const CouterPage(),
        '/couter-stateless': (context) => const CouterStatelessPage(),
        '/couter2': (context) => const PageCounter2(),
        '/login': (context) => const LoginPage(),
        '/home-getIt': (context) => const HomePageGetIt(),
      },
    );
  }
}

/// Adicionando comentário
///
/// Dentro contém um método que retorna o nome de Jesus.
void firstComment() {
  debugPrint('Jesus Cristo');
}

void tudoPorEle() {
  firstComment();
}
