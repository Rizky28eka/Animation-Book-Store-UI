import 'package:flutter/material.dart';
import 'pages/home/_home_page.dart';
import 'shared/helpers/custom_theme.dart';
import 'shared/route_transitions/custom_detail_route.dart';
import 'shared/route_transitions/scale_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Books App',
      theme: CustomTheme.light,
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return ScaleRoute(const HomePage(), settings);
        }
        if (settings.name == '/detail') return CustomDetailRoute(settings);

        return ScaleRoute(const HomePage(), settings);
      },
    );
  }
}
