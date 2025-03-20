part of '../footer.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({
    super.key,
    required this.onMenuOptionPressed,
  });

  final Function(MenuOption option) onMenuOptionPressed;

  @override
  Widget build(BuildContext context) {
    return DeviceLayoutBuilder(
      layoutBuilder: (isMobile) {
        return isMobile
            ? FooterMobilePage(onMenuOptionPressed: onMenuOptionPressed)
            : FooterDesktopPage(onMenuOptionPressed: onMenuOptionPressed);
      },
    );
  }
}
