import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/navigation/app_router.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  static const spaceTextSpan = TextSpan(text: ' ', style: textSpanStyle);
  static const padding = EdgeInsets.all(8.0);
  static const textSpanStyle = TextStyle(fontSize: 16, color: Colors.black);
  static const boldTextStyle = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        child: const Text.rich(
          TextSpan(
            text: 'Already have an account?',
            children: [
              spaceTextSpan,
              TextSpan(
                text: 'Sign In',
                style: boldTextStyle,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () => context.router.replace(const LoginRoute()),
      ),
    );
  }
}
