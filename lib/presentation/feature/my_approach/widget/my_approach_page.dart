part of '../my_approach.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile ? const MobilePage() : const DesktopPage();
      },
    );
  }
}
