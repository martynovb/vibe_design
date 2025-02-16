part of '../about_me.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile ? const AboutMeMobilePage() : const AboutMeDesktopPage();
      },
    );
  }
}