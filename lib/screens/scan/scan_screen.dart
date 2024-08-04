import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:idt_flutter/spaces.dart';
import 'package:idt_flutter/widgets/camera_preview_widget.dart';
import 'package:scanning_effect/scanning_effect.dart';

import '../../widgets/demo_products/demo_products_sheet.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  void _openDemoSheet(BuildContext context) {
    openDemoProductsSheet(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.square(
              dimension: screenHeight,
              child: const FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: 100,
                  child: CameraPreviewWidget(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const CircleAvatar(
                  child: HeroIcon(HeroIcons.xMark),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox.square(
                    dimension: screenWidth * 0.8,
                    child: const ScanningEffect(
                      scanningColor: Colors.red,
                      borderLineColor: Colors.green,
                      delay: Duration(seconds: 0),
                      duration: Duration(seconds: 1),
                      child: SizedBox(),
                    ),
                  ),
                  spaceH32,
                  ElevatedButton(
                    onPressed: () {
                      _openDemoSheet(context);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.showDemoProducts,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
