part of '../learning_details.dart';

class LearningDetailsPage extends StatelessWidget {
  const LearningDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const LearningDetailsMobilePage()
            : const LearningDetailsDesktopPage();
      },
    );
  }
}
