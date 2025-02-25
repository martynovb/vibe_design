part of '../reviews.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const ReviewsMobilePage()
            : ReviewsDesktopPage();
      },
    );
  }
}
