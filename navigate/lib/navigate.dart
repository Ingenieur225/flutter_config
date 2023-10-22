library navigate;

import 'package:flutter/material.dart';

class Helper {
  static void nextPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));

    // Navigator.push(
    // context,
    // PageRouteAnimator(
    //   child: page,
    //   routeAnimation: RouteAnimation.scale,
    //   settings: const RouteSettings(arguments: 'next page'),
    //   curve: Curves.slowMiddle,
    //   duration: const Duration(milliseconds: 500),
    //   reverseDuration: const Duration(milliseconds: 500),
    // ));
  }
}
