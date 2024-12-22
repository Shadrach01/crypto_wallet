import 'package:crypto_wallet/core/routes/app_routes_names.dart';
import 'package:crypto_wallet/features/home_page/view/home_page.dart';
import 'package:crypto_wallet/features/onboarding_page/presentation/view/onboarding_screen.dart';
import 'package:get/get.dart';

List<GetPage> getPagesRoutes = [
  GetPage(
    name: AppRoutesNames.onboardingRoute,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: AppRoutesNames.homePageRoute,
    page: () => HomePage(),
  ),
];
