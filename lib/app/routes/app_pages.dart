import 'package:get/get.dart';

import '../modules/About/bindings/about_binding.dart';
import '../modules/About/views/about_view.dart';
import '../modules/Borobudur/bindings/borobudur_binding.dart';
import '../modules/Borobudur/views/borobudur_view.dart';
import '../modules/Branda/bindings/branda_binding.dart';
import '../modules/Branda/views/branda_view.dart';
import '../modules/Carousel2/bindings/carousel2_binding.dart';
import '../modules/Carousel2/views/carousel2_view.dart';
import '../modules/Carousel3/bindings/carousel3_binding.dart';
import '../modules/Carousel3/views/carousel3_view.dart';
import '../modules/GunungBromo/bindings/gunung_bromo_binding.dart';
import '../modules/GunungBromo/views/gunung_bromo_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/RajaAmpat/bindings/raja_ampat_binding.dart';
import '../modules/RajaAmpat/views/raja_ampat_view.dart';
import '../modules/Register/bindings/register_binding.dart';
import '../modules/Register/views/register_view.dart';
import '../modules/bookmark/bindings/bookmark_binding.dart';
import '../modules/bookmark/views/bookmark_view.dart';
import '../modules/creator/bindings/creator_binding.dart';
import '../modules/creator/views/creator_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kampoengkartsa/bindings/kampoengkartsa_binding.dart';
import '../modules/kampoengkartsa/views/kampoengkartsa_view.dart';
import '../modules/natsepa/bindings/natsepa_binding.dart';
import '../modules/natsepa/views/natsepa_view.dart';
import '../modules/pantaikuta/bindings/pantaikuta_binding.dart';
import '../modules/pantaikuta/views/pantaikuta_view.dart';
import '../modules/populer/bindings/populer_binding.dart';
import '../modules/populer/views/populer_view.dart';
import '../modules/prambanan/bindings/prambanan_binding.dart';
import '../modules/prambanan/views/prambanan_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/trips/bindings/trips_binding.dart';
import '../modules/trips/views/trips_view.dart';
import '../modules/ubud/bindings/ubud_binding.dart';
import '../modules/ubud/views/ubud_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.CAROUSEL2,
      page: () => const Carousel2View(),
      binding: Carousel2Binding(),
    ),
    GetPage(
      name: _Paths.CAROUSEL3,
      page: () => const Carousel3View(),
      binding: Carousel3Binding(),
    ),
    GetPage(
      name: _Paths.BRANDA,
      page: () => const BrandaView(),
      binding: BrandaBinding(),
    ),
    GetPage(
      name: _Paths.PANTAIKUTA,
      page: () => const PantaikutaView(),
      binding: PantaikutaBinding(),
    ),
    GetPage(
      name: _Paths.POPULER,
      page: () => const PopulerView(),
      binding: PopulerBinding(),
    ),
    GetPage(
      name: _Paths.TRIPS,
      page: () => const TripsView(),
      binding: TripsBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARK,
      page: () => const BookmarkView(),
      binding: BookmarkBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.RAJA_AMPAT,
      page: () => const RajaAmpatView(),
      binding: RajaAmpatBinding(),
    ),
    GetPage(
      name: _Paths.GUNUNG_BROMO,
      page: () => const GunungBromoView(),
      binding: GunungBromoBinding(),
    ),
    GetPage(
      name: _Paths.BOROBUDUR,
      page: () => const BorobudurView(),
      binding: BorobudurBinding(),
    ),
    GetPage(
      name: _Paths.PRAMBANAN,
      page: () => const PrambananView(),
      binding: PrambananBinding(),
    ),
    GetPage(
      name: _Paths.UBUD,
      page: () => const UbudView(),
      binding: UbudBinding(),
    ),
    GetPage(
      name: _Paths.NATSEPA,
      page: () => const NatsepaView(),
      binding: NatsepaBinding(),
    ),
    GetPage(
      name: _Paths.KAMPOENGKARTSA,
      page: () => const KampoengKartsaView(),
      binding: KampoengkartsaBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.CREATOR,
      page: () => const CreatorView(),
      binding: CreatorBinding(),
    ),
  ];
}
