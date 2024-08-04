import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:idt_flutter/data/demo_data.dart';
import 'package:idt_flutter/navigation/routes.dart';
import 'package:idt_flutter/spaces.dart';
import 'package:idt_flutter/widgets/product_list_item.dart';

class DemoProductsSheet extends StatelessWidget {
  const DemoProductsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppLocalizations.of(context)!.demoProducts,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          spaceH16,
          ...demoProducts.map(
            (product) => Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: ProductListItem(
                product: product,
                onClick: () {
                  context.pushNamed(
                    productDetailsName,
                    queryParameters: {paramId: product.id},
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void openDemoProductsSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    enableDrag: true,
    showDragHandle: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    builder: (context) => const DemoProductsSheet(),
  );
}
