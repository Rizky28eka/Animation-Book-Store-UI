import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/helpers/custom_system_ui_overlay_style.dart';
import '../../shared/sizes.dart';
import 'home_app_bar.dart';
import 'home_body.dart';
import 'home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: CustomSystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: screenBottomPadding),
              child: Column(
                children: [
                  HomeAppBar(),
                  HomeHeader(),
                  HomeBody(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
