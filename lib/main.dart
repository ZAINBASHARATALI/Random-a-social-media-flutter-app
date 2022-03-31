import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ltp/providers/navbar.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:get_storage/get_storage.dart';
import 'providers/posts.dart';

main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routingClass = RoutingPages();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => NavBarProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => PostsProvider(),
          ),
        ],
        child: GetMaterialApp(
          theme: ThemeData(primarySwatch: kmainColor),
          debugShowCheckedModeBanner: false,
          initialRoute: '/splashpage',
          getPages: routingClass.pages,
        ),
      ),
    );
  }
}
