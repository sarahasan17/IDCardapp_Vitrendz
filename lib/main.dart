import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:id_card_vitrendz/routes/approutes.dart';

void main() async {
  await GetStorage.init();
  await Hive.initFlutter();
  var box = await Hive.openBox('detail');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes(),
    );
  }
}
