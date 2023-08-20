import 'package:flutter/material.dart';
import '../../shared/data/data_source.dart';
import '../../shared/sizes.dart';
import 'widgets/popular_book_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: screenHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios, size: 15)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: screenHeight * 0.39,
          child: ListView.separated(
            padding:
                const EdgeInsets.symmetric(horizontal: screenHorizontalPadding),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, i) => PopularBookWidget(popularBooks[i]),
            separatorBuilder: (context, i) => const SizedBox(width: 20),
            itemCount: popularBooks.length,
          ),
        ),
      ],
    );
  }
}
