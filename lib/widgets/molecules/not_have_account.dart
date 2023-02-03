import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/navigation/app_router.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  static const spaceTextSpan = TextSpan(text: ' ', style:textSpanStyle);
  static const padding = EdgeInsets.all(8.0);
  static const textSpanStyle = TextStyle(fontSize: 16, color: Colors.black);
  static const boldTextStyle =
  TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          InkWell(
            child: const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'Don`t have an account yet?',
                children: [
                  spaceTextSpan,
                  TextSpan(
                    text: 'Sign Up',
                    style: boldTextStyle
                  ),
                ],
              ),
            ),
            onTap: () => context.router.replace(const SignUpRoute()),
          ),
        ],
      ),
    );
  }
}
