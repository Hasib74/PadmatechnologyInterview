import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppAsset.dart';
import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppProvider/SplashProvider.dart';
import 'package:padma_technology/Widgets/CircularWidget.dart';
import 'package:padma_technology/main.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  SplashProvider splashProvider;

  @override
  Widget build(BuildContext context) {
    mainWidth = MediaQuery.of(context).size.width;
    mainHeight = MediaQuery.of(context).size.height;

    splashProvider = Provider.of<SplashProvider>(context)..setView(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child: CircularWidgets(
        imageLink: AppAsset.appLogo,
      )),
    );
  }
}
