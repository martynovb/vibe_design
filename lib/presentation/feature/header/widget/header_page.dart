part of '../header.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile ? const HeaderMobilePage() : const HeaderDesktopPage();
      },
    );
  }
}
