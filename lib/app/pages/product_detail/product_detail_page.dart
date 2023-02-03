import 'package:auto_size_text/auto_size_text.dart';
import 'package:delivery_dart/app/core/ui/helpers/size_extensions.dart';
import 'package:delivery_dart/app/core/ui/styles/text_styles.dart';
import 'package:delivery_dart/app/core/ui/widgets/delivery_appbar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(children: [
        Container(
          width: context.screenWidth,
          height: context.percentHeight(.4),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(''),
            fit: BoxFit.cover,
          )),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('X-Burguer', style: context.textStyles.textExtraBold.copyWith(fontSize: 22)),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(child: Text('sdasd')),
          ),
        ),
        const Divider(),
        Row(
          children: [
            SizedBox(width: context.percentWidth(.5), child: Text('aaa')),
            Container(
              width: context.percentWidth(.5),
              height: 68,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    'Adicionar',
                    style: context.textStyles.textExtraBold,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AutoSizeText(
                    r'R$6,99',
                    style: context.textStyles.textExtraBold.copyWith(fontSize: 13),
                  ),
                ]),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
