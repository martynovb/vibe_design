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
        child: Text(
          text,
          style: TextTheme.of(context).bodyMedium?.copyWith(
            color: isSelected ? ColorName.accent : ColorName.titleText,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),  
        ),
      ),
    );
  }
}
