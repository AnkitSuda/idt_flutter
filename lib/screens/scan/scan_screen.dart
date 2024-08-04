import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:idt_flutter/widgets/camera_preview_widget.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox.square(
                dimension: 100,
                child: CameraPreviewWidget(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.showDemoProducts,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
