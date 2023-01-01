import 'package:get/get.dart';
import 'package:id_card_vitrendz/Screen/Image_screen.dart';
import '../Screen/Detail_update_screen.dart';
import '../Screen/IDCard_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const IDCardScreen()),
        GetPage(
          name: "/detailscreen",
          page: () => const DetailUpdateScreen(),
        ),
        GetPage(
          name: "/imagescreen",
          page: () => const ImageScreen(),
        ),
      ];
}
