import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:idt_flutter/main_cubit/main_cubit.dart';
import 'package:idt_flutter/navigation/routes.dart';
import 'package:idt_flutter/spaces.dart';
import 'package:idt_flutter/widgets/goal_list_item.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        tooltip: AppLocalizations.of(context)!.scan,
        onPressed: () {
          context.push(scanPath);
        },
        label: Text(AppLocalizations.of(context)!.scan),
        icon: const HeroIcon(HeroIcons.sparkles),
      ),
      body: BlocBuilder<MainCubit, MainState>(builder: (context, state) {
        return SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(32),
            children: [
              Text(
                AppLocalizations.of(context)!.yourGoal,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              spaceH12,
              GoalListItem(
                goal: state.goal,
                onClick: null,
              ),
            ],
          ),
        );
      }),
    );
  }
}
