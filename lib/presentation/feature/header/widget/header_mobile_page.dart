part of '../header.dart';

class HeaderMobilePage extends StatelessWidget {
  const HeaderMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 96,
          child: Assets.images.hashtag.image(),
        ),
      ],
    );
  }
}
