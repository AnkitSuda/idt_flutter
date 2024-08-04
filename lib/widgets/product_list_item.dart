import 'package:flutter/material.dart';
import 'package:idt_flutter/data/enum/goal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:idt_flutter/data/model/product.dart';
import 'package:idt_flutter/spaces.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  final VoidCallback? onClick;

  const ProductListItem({
    super.key,
    required this.product,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 32,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  color: Colors.white,
                ),
                child: Image.asset(
                  product.image!,
                ),
              ),
            ),
            spaceW8,
            Text(
              product.name ?? "",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        onTap: onClick,
      ),
    );
  }
}
