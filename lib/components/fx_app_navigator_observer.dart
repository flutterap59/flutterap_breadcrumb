import 'package:flutter/material.dart';

List<Route> routeStack = [];

class AppNavigatorObserver extends NavigatorObserver {

  //manage navigator.push
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    routeStack.add(route);
  }

  //manage navigator.pop
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    routeStack.remove(route);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    routeStack.remove(route);
  }


  //manage navigator.pushReplacement
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    routeStack= [newRoute!];
  }
}
