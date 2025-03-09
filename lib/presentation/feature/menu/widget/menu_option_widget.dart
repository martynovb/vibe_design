part of '../menu.dart';

class MenuOptionWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final MenuOption menuOption;
  final Function(MenuOption) onMenuOptionSelected;

  const MenuOptionWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.menuOption,
    required this.onMenuOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onMenuOptionSelected(menuOption),
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.insetsButton),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Always render bold version for consistent layout
            Opacity(
              opacity: 0,
              child: _buildText(
                fontWeight: FontWeight.bold,
                context: context,
              ),
            ),
            // Visible text
            _buildText(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              context: context,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildText({
    required FontWeight fontWeight,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextTheme.of(context).bodyMedium?.copyWith(
            color: isSelected ? ColorName.accent : ColorName.title,
            fontWeight: fontWeight,
          ),
    );
  }
}
