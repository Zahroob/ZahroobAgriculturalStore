import 'package:flutter/material.dart';
import 'package:zahroobstor/page/Home_View_page.dart';
import 'package:zahroobstor/page/Login_Page.dart';
import 'package:zahroobstor/page/Main_View.dart';
import 'package:zahroobstor/page/Splash_View_page.dart';
import 'package:zahroobstor/page/all_products_page.dart';
import 'package:zahroobstor/page/cart_page.dart';
import 'package:zahroobstor/page/categories_page.dart';
import 'package:zahroobstor/page/my_profily_page.dart';
import 'package:zahroobstor/page/one_product.dart';
import 'package:zahroobstor/page/product_details_page.dart';
import 'package:zahroobstor/page/product_specifications_page.dart';
import 'package:zahroobstor/page/register_Page.dart';
import 'package:zahroobstor/page/support_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String registration = '/registration';
  static const String Splash = '/SplashView';
  static const String homeview = '/homeview';
  static const String mainview = '/mainview';
  static const String myprofile = '/myprofile';
  static const String support = '/support';
  static const String categories = '/categories';
  static const String productDetails = '/product-details';
  static const String allProducts = '/all-products';
  static const String productSpecifications = '/product-specifications';
  static const String cart = '/cart';
  static const String oneProduct = '/oneProduct';


  static final Map<String, WidgetBuilder> appRoutes = {
    AppRoutes.Splash: (context) => const SplashView(),
    AppRoutes.login: (context) => const LoginPage(),
    AppRoutes.registration: (context) => const RegisterPage(),
    AppRoutes.homeview: (context) => const HomeView(),
    AppRoutes.mainview: (context) => const MainView(),
    AppRoutes.myprofile: (context) => const MyProfilePage(),
    AppRoutes.support: (context) => const SupportPage(),
    AppRoutes.categories: (context) => const CategoriesPage(),
    AppRoutes.productDetails: (context) => const ProductDetailsPage(),
    AppRoutes.allProducts: (context) => const AllProductsPage(),
    AppRoutes.productSpecifications: (context) =>
        const ProductSpecificationsPage(),
    AppRoutes.cart: (context) => const CartPage(),
    AppRoutes.oneProduct: (context) => const OneProduct(),

  };
}
