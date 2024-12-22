import 'package:crypto_wallet/core/commons/widgets/app_button.dart';
import 'package:crypto_wallet/core/routes/app_routes_names.dart';
import 'package:crypto_wallet/core/utils/color_res.dart';
import 'package:crypto_wallet/core/utils/image_res.dart';
import 'package:crypto_wallet/core/utils/text_res.dart';
import 'package:crypto_wallet/features/onboarding_page/presentation/widgets/page_container.dart';
import 'package:crypto_wallet/features/onboarding_page/provider/dot_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class OnboardingWidgets extends ConsumerWidget {
  const OnboardingWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = PageController();
    final index = ref.watch(indexDotProvider);
    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (value) =>
              ref.read(indexDotProvider.notifier).changeIndex(value),
          children: [
            PageContainer(
              image: ImageRes.bitcoin3,
              text: TextRes.onboarding1,
              index: index,
            ),
            PageContainer(
              image: ImageRes.bitcoin4,
              text: TextRes.onboarding2,
              index: index,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: 50,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: button(
              index: index,
              ref: ref,
              controller: controller,
            ),
          ),
        )
      ],
    );
  }

  Widget button({
    required int index,
    required WidgetRef ref,
    required PageController controller,
  }) {
    return AppButton(
      onTap: () {
        if (index < 1) {
          controller.animateToPage(
            index + 1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
          );
        } else {
          Get.to(AppRoutesNames.homePageRoute);
        }
      },
      child: Center(
        child: Text(
          index < 1 ? "Next" : "Continue",
          style: TextStyle(
            color: ColorRes.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
