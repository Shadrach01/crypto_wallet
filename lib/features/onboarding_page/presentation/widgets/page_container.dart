import 'dart:ui';

import 'package:crypto_wallet/core/utils/color_res.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final String text;
  final String image;
  final int index;
  const PageContainer({
    super.key,
    required this.text,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // Background with a blurred image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.center,
              child: DotsIndicator(
                dotsCount: 2,
                position: index,
                decorator: DotsDecorator(
                  color: ColorRes.whiteColor,
                  activeColor: ColorRes.containerColor,
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeSize: Size(38, 16),
                  size: Size(16, 16),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ),
          // Text content
          Positioned(
            bottom: 180,
            left: 20,
            right: 20,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.3,
                shadows: [
                  Shadow(
                    offset: Offset(0, 6),
                    blurRadius: 3,
                    color: Colors.black54,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
