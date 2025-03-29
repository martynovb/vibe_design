part of '../footer.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? FooterMobilePage()
            : FooterDesktopPage();
      },
    );
  }
}
