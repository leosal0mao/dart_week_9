import 'package:delivery_dart/app/pages/product_detail/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailRouter {
  ProductDetailRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(create: (context) => Object()),
        ],
        child: const ProductDetailPage(),
      );
}
