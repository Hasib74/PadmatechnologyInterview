import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:padma_technology/AppProvider/CredentialProvider.dart';
import 'package:padma_technology/AppProvider/SharedPreferenceProvider.dart';
import 'package:padma_technology/AppProvider/SplashProvider.dart';
import 'package:padma_technology/AppProvider/UserProvider.dart';
import 'package:padma_technology/Language/language.dart';
import 'package:padma_technology/Route/Route.dart';
import 'package:padma_technology/Theme/AppTheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AppProvider/LanguageProvider.dart';

Language language = Language();
SharedPreferences prefs;

double mainHeight, mainWidth, paddingTop, appbarHeight;

String firebaseToken;

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppLanguage()),
        ChangeNotifierProvider(
          create: (_) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CredentialProvider(),
        ),
        Provider(
          create: (_) => SharedPreferenceProvider().initial(),
        ),

        ChangeNotifierProvider(

          create: (_)=>UserProvider(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
        create: (BuildContext context) => AppLanguage(),
        child: Consumer<AppLanguage>(builder: (context, model, child) {
          return ConnectivityAppWrapper(
              app: MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale(model.appLocale),
            supportedLocales: LocaleHelper.getAllLocale(),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate
            ],
            theme: AppTheme(),
            routes: appRoutes,
            initialRoute: SPLASH_SCREEN,
          ));
        }));
  }
}
