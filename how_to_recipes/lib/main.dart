import 'package:flutter/material.dart';
import 'package:how_to_recipes/ui/screens/onboarding.dart';
import 'package:how_to_recipes/core/services/key_storage/key_storage_service.dart';
import 'package:how_to_recipes/core/services/navigation/navigation_service.dart';
import 'package:how_to_recipes/core/utils/logger.dart';
import 'package:how_to_recipes/locator.dart';
import 'package:how_to_recipes/ui/router..dart';
import 'package:how_to_recipes/ui/screens/saved_recipes_screen.dart';
import 'package:how_to_recipes/ui/screens/splash_screen.dart';
import 'package:how_to_recipes/ui/screens/view_steps.dart';
import 'package:how_to_recipes/ui/ui_helper.dart';
import 'package:provider/provider.dart';

import 'ui/screens/add_steps.dart';
import 'ui/screens/onboarding.dart';
import 'ui/screens/saved_recipes_screen.dart';
import 'ui/screens/splash_screen.dart';
import 'ui/screens/view_steps.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLogger();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final navigationService = locator<NavigationService>();
  final keystorage = locator<KeyStorageService>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: ViewSteps(),
      //home: SavedRecipesScreen(),
    );

    // return Consumer<AppStateNotifier>(
    //   builder: (BuildContext context, AppStateNotifier value, Widget child) =>
    //       MaterialApp(
    //     title: 'Recipe Diary',
    //     theme: Constants.lightTheme,
    //     darkTheme: Constants.darkTheme,
    //     navigatorKey: navigationService.navigatorKey,
    //     onGenerateRoute: Router.generateRoute,
    //     home: SplashScreen(),
    //     //    ,
    //   ),
    // );
  }
}
