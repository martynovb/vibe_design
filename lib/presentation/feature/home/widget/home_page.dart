part of '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.scrollTo,
  });

  final MenuOption? scrollTo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return DeviceLayoutBuilder(
            layoutBuilder: (isMobile) => isMobile
                ? const HomeMobilePage()
                : HomeDesktopPage(
                    scrollTo: scrollTo,
                  ),
          );
        },
      ),
    );
  }
}
