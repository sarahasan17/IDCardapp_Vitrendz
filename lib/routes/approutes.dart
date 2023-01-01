import 'package:id_card_vitrendz/Screen/Detail_update_screen.dart';
import 'package:id_card_vitrendz/Screen/IDCard_screen.dart';
import 'package:get/get.dart';
import 'package:id_card_vitrendz/Screen/Image_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => IDCardScreen()),
        GetPage(
          name: "/detailscreen",
          page: () => DetailUpdateScreen(),
        ),
        GetPage(
          name: "/imagescreen",
          page: () => ImageScreen(),
        ),
      ];
}
