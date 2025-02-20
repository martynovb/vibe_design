part of '../select_level.dart';

class SelectLevelPage extends StatelessWidget {
  const SelectLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const SelectLevelMobilePage()
            : const SelectLevelDesktopPage();
      },
    );
  }
}
