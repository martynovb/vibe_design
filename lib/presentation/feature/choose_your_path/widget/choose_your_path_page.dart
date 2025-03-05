part of '../choose_your_path_level.dart';

class ChooseYourPathPage extends StatelessWidget {
  const ChooseYourPathPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const ChooseYourPathMobilePage()
            : ChooseYourPathDesktopPage();
      },
    );
  }
}
