import 'package:flutter/material.dart';
import 'package:flutterap_breadcrumb/components/fx_app_navigator_observer.dart';
import 'package:flutterap_breadcrumb/fx_flutterap_breadcrumb.dart';

void main() {
  runApp(const FlutterapBreadcrumbApp());
}

class FlutterapBreadcrumbApp extends StatelessWidget {
  const FlutterapBreadcrumbApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [AppNavigatorObserver()],
        //Define initial route and the other two routes to test flutterap_breadcrumb
        routes: {
          '/': (context) => const InitialPage(),
          '/second-page': (context) => const SecondPage(),
          '/third-page': (context) => const ThirdPage(),
        },
      ),
    );
  }
}


//Define InitialPage which has flutterap_breadcrumb to manage presence in each page and a button to navigate to SecondPage
class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutterap Breadcrumb",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: FxBreadCrumbNavigator.shaped(
              firstRoute: "Flutterap Breadcrumb",
              breadButtonType: BreadButtonType.shaped,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.routeName);
            },
            child: const Text('Navigate to second page'),
          ),
        ],
      ),
    );
  }
}

//Define SecondPage which has flutterap_breadcrumb to manage presence in each page and a button to navigate to ThirdPage
class SecondPage extends StatelessWidget {
  static const routeName = '/second-page';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: FxBreadCrumbNavigator.shaped(
              firstRoute: "Flutterap Breadcrumb",
              breadButtonType: BreadButtonType.shaped,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ThirdPage.routeName);
            },
            child: const Text('Navigate to third page'),
          ),
        ],
      ),
    );
  }
}

//Define ThirdPage which has flutterap_breadcrumb to manage presence in each page.
class ThirdPage extends StatelessWidget {
  static const routeName = '/third-page';

  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: FxBreadCrumbNavigator.shaped(
              firstRoute: "Flutterap Breadcrumb",
              breadButtonType: BreadButtonType.shaped,
            ),
          ),
        ],
      ),
    );
  }
}
