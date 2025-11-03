import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../pages/about_page.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';

  static final routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: about, page: () => const AboutPage()),
  ];
}
