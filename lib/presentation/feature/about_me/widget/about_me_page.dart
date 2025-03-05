part of '../about_me.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const AboutMeMobilePage()
            : const AboutMeDesktopPage();
      },
    );
  }
}
