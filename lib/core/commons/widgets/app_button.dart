import 'package:crypto_wallet/core/utils/color_res.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double height;
  final Widget child;
  final VoidCallback? onTap;
  const AppButton({
    super.key,
    this.height = 60,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorRes.containerColor,
          borderRadius: BorderRadius.circular(20),
          gradient: ColorRes.containerGradient,
        ),
        child: child,
      ),
    );
  }
}
