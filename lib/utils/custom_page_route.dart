import 'package:flutter/material.dart';

class NavigationUtils {
  // Push a new page with custom transition
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      CustomPageRoute(page: page),
    );
  }

  // Push a new page and replace the current page
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      CustomPageRoute(page: page),
    );
  }

  // Push a new page and remove all the pages until a specific page
  static void pushAndRemoveUntil(BuildContext context, Widget page) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return page;
    }), (route) => false);
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget page;

  CustomPageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}
