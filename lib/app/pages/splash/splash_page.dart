import 'package:delivery_dart/app/core/config/env/env.dart';
import 'package:delivery_dart/app/core/ui/helpers/size_extensions.dart';
import 'package:delivery_dart/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: context.screenWidth,
                  child: Image.asset(
                    'assets/images/lanche.png',
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: SizedBox(
                height: context.percentHeight(.3),
                child: Column(children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 40),
                  DeliveryButton(
                    width: context.percentWidth(.6),
                    height: 35,
                    label: 'ACESSAR',
                    onPressed: () {
                      Navigator.of(context).popAndPushNamed('/home');
                    },
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
