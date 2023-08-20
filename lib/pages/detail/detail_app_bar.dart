import 'package:flutter/material.dart';
import '../../shared/colors.dart';
import '../../shared/sizes.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: screenHorizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios, color: whiteColor),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: whiteColor),
          ),
        ],
      ),
    );
  }
}
