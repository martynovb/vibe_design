part of '../learning_process.dart';

class LearningProcessPage extends StatelessWidget {
  const LearningProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const LearningProcessMobilePage()
            : const LearningProcessDesktopPage();
      },
    );
  }
}
