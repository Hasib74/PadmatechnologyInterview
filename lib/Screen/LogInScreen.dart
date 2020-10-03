import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppHelper/AppSpaces.dart';
import 'package:padma_technology/AppProvider/CredentialProvider.dart';
import 'package:padma_technology/Widgets/AppButton.dart';
import 'package:padma_technology/Widgets/DefaultTextField.dart';
import 'package:padma_technology/main.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwrdController = TextEditingController();

  CredentialProvider credentialProvider;

  @override
  Widget build(BuildContext context) {
    credentialProvider = Provider.of<CredentialProvider>(context)
      ..setContext(context);

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DefaultTextField(
                hint: language.enter_your_email, controller: emailController),
            AppSpaces.spaces_height_15,
            DefaultTextField(
                obscureText: true,
                hint: language.enter_your_password,
                controller: passwrdController),
            AppSpaces.spaces_height_25,
            AppButton(
              backgroundColor: Colors.black87,
              text: language.login,
              textColor: AppColors.Button_Color1,
              onClick: () {
                credentialProvider.logInProvider(
                    emailController.value.text, passwrdController.value.text);
              },
            )
          ],
        ),
        credentialProvider.loading
            ? Positioned.fill(
                child: Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ))
            : Container()
      ],
    ));
  }
}
