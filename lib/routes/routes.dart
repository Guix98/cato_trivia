import 'package:cato_trivia/pages/categories_page.dart';
import 'package:cato_trivia/pages/homepage.dart';
import 'package:get/get.dart';

const home = '/home';
const categories = '/categories';
List<GetPage> routes = [
  GetPage(name: home, page: () => HomePage()),
  GetPage(name: categories, page: () => CategoriesPage())
];
