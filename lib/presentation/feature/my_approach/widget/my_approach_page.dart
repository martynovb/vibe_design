part of '../my_approach.dart';

class MyApproachPage extends StatelessWidget {
  const MyApproachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile ? const MyApproachMobilePage() : const MyApproachDesktopPage();
      },
    );
  }
}
