part of '../why_me.dart';

class WhyMePage extends StatelessWidget {
  const WhyMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? const WhyMeMobilePage()
            : const WhyMeDesktopPage();
      },
    );
  }
}
