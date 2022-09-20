import 'package:get/get.dart';
import 'package:mini_notes_medstud/batu_saluran.dart';
import 'package:mini_notes_medstud/benign_prostat.dart';
import 'package:mini_notes_medstud/home_view.dart';
import 'package:mini_notes_medstud/splash_view.dart';

final appRoute = [
  GetPage(
    name: SplashView.route,
    page: () => const SplashView(),
    participatesInRootNavigator: true,
  ),
  GetPage(
    name: HomeView.route,
    page: () => const HomeView(),
  ),
  GetPage(
    name: BenignView.route,
    page: () => const BenignView(),
  ),
  GetPage(
    name: BatuSaluranView.route,
    page: () => const BatuSaluranView(),
  ),
];
