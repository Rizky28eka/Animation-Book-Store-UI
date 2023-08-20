import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/colors.dart';
import '../../shared/data/models/book.dart';
import '../../shared/helpers/custom_system_ui_overlay_style.dart';
import '../../shared/sizes.dart';
import 'detail_app_bar.dart';
import 'detail_body.dart';
import 'detail_footer.dart';

class DetailPage extends StatefulWidget {
  final Animation<double> transitionAnimation;

  const DetailPage(
    this.transitionAnimation, {
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    widget.transitionAnimation.addStatusListener(_animationHandler);
  }

  void _animationHandler(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.removeStatusListener(_animationHandler);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final map =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final Book book = map['book'];
    final Key sourceWidgetKey = map['sourceWidgetKey'];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: CustomSystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            _DetailPageBackground(book: book, sourceWidgetKey: sourceWidgetKey),
            Material(
              color: transparentColor,
              child: SafeArea(
                bottom: false,
                child: FadeTransition(
                  opacity: _opacityAnimation,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: screenBottomPadding),
                      child: Column(
                        children: [
                          const DetailAppBar(),
                          DetailBody(book),
                          const DetailFooter(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailPageBackground extends StatelessWidget {
  final Book book;
  final Key sourceWidgetKey;

  const _DetailPageBackground({
    required this.book,
    required this.sourceWidgetKey,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bookCover-${book.id}-$sourceWidgetKey',
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(blackColorOp015, BlendMode.darken),
        child: Image.asset(
          book.rawCoverImage,
          fit: BoxFit.cover,
          color: greyColor,
          colorBlendMode: BlendMode.saturation,
        ),
      ),
    );
  }
}
