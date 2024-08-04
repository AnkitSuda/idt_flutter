import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idt_flutter/data/enum/goal.dart';
import 'package:idt_flutter/data/model/product.dart';
import 'package:idt_flutter/main_cubit/main_cubit.dart';
import 'package:idt_flutter/spaces.dart';
import 'package:scanning_effect/scanner_border_painter.dart';
import 'package:scanning_effect/scanning_effect.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final goal = context.watch<MainCubit>().state.goal;
    final score = (goal == Goal.muscleGain
            ? product.scoreMuscleGain
            : product.scoreFatLoss) ??
        0;

    Color scoreColor;
    String scoreDescription;

    if (score == 50) {
      scoreColor = Colors.orangeAccent;
      scoreDescription = AppLocalizations.of(context)!.neutralScoreDescription;
    }
    if (score < 50) {
      scoreColor = Colors.red;
      scoreDescription = AppLocalizations.of(context)!.badScoreDescription;
    } else if (score < 70) {
      scoreColor = Colors.orange;
      scoreDescription = AppLocalizations.of(context)!.goodScoreDescription;
    } else {
      scoreColor = Colors.green;
      scoreDescription = AppLocalizations.of(context)!.veryGoodScoreDescription;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name ?? "",
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: padding32,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox.square(
                        dimension: 100,
                        child: Positioned.fill(
                          child: CustomPaint(
                            painter: ScannerBorderPainter(color: scoreColor),
                          ),
                        ),
                      ),
                      Text(
                        score.toStringAsFixed(0),
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(color: scoreColor),
                      ),
                    ],
                  ),
                  spaceH20,
                  Text(
                    AppLocalizations.of(context)!.healthScore,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  spaceH8,
                  Text(
                    scoreDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const Divider(),
            Card(
              margin: padding32,
              child: Padding(
                padding: padding16,
                child: Row(
                  children: [
                    if (product.image != null) ...[
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          product.image!,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      spaceW12,
                    ],
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name ?? "",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          spaceH2,
                          Text(
                            product.description ?? "",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
