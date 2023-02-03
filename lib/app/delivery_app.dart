import 'package:delivery_dart/app/core/providers/application_binding.dart';
import 'package:delivery_dart/app/core/ui/theme/theme_config.dart';
import 'package:delivery_dart/app/pages/home/home_router.dart';
import 'package:delivery_dart/app/pages/product_detail/product_detail_router.dart';
import 'package:delivery_dart/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        theme: ThemeConfig.theme,
        title: 'Delivery App',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
        },
      ),
    );
  }
}
