import 'package:flutter/material.dart';

import 'hemo.dart';
import 'themes/app_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController(text: '');

  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final logo = Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 3,
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fill,
                image: AssetImage('assets/child.jpeg'))));
    final inputUserName = Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        style: TextStyle(color: AppColors.white),
        controller: userController,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kDarkHomeRGBO,
            hintStyle: const TextStyle(
              color: AppColors.white,
            ),
            hintText: 'Nom utilisateur',
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputPassword = Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        style: TextStyle(color: AppColors.white),
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kDarkHomeRGBO,
            hintStyle: const TextStyle(
              color: AppColors.white,
            ),
            hintText: 'Mot de passe',
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final buttonLogin = Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
            style: roundedSmallButton(AppColors.blue, 20, 50),
            child: const Text('Connexion',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            onPressed: () {
              if (userController.text.trim() == 'admin' &&
                  passwordController.text.trim() == 'admin') {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Didacticiel()),
                    (route) => false);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content:
                        Text("Nom d'utilisateur ou mot de passe incorrect")));
                setState(() {
                  userController.text = '';
                  passwordController.text = '';
                });
              }
            }),
      ),
    );
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.kDarkHomeRGBO,
      body: SingleChildScrollView(
        child: Column(
          children: [
            logo,
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Bienvenue sur LearnMsWord',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.white, fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Card(
                color: AppColors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15.0),
                  child: Column(
                    children: <Widget>[
                      inputUserName,
                      inputPassword,
                      buttonLogin,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  /// The small rounded button.
  ButtonStyle roundedSmallButton(Color colors, double width, double height) =>
      ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(width, height)),
          elevation: MaterialStateProperty.all(5.0),
          backgroundColor: MaterialStateProperty.all(colors),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ));
}
