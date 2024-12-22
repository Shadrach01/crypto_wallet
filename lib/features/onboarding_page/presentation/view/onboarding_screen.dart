import 'package:crypto_wallet/core/utils/color_res.dart';
import 'package:crypto_wallet/features/onboarding_page/presentation/widgets/onboarding_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      body: OnboardingWidgets(),
    );
  }
}
