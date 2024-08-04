import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:idt_flutter/data/enum/goal.dart';
import 'package:idt_flutter/main_cubit/main_cubit.dart';
import 'package:idt_flutter/navigation/routes.dart';
import 'package:idt_flutter/widgets/goal_list_item.dart';

class GoalSelectorScreen extends StatelessWidget {
  const GoalSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context)!.selectYourGoal,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              ...Goal.values.map(
                (goal) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: GoalListItem(
                    goal: goal,
                    onClick: () {
                      context.read<MainCubit>().setGoal(goal);
                      context.push(landingPath);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
