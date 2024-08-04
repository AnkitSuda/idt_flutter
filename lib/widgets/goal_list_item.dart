import 'package:flutter/material.dart';
import 'package:idt_flutter/data/enum/goal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoalListItem extends StatelessWidget {
  final Goal goal;
  final VoidCallback? onClick;

  const GoalListItem({
    super.key,
    required this.goal, required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        title: Text(
          goal == Goal.fatLoss
              ? AppLocalizations.of(context)!.fatLoss
              : AppLocalizations.of(context)!.muscleGain,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        onTap: onClick,
      ),
    );
  }
}
