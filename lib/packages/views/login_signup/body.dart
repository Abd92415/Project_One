import 'package:app_store/packages/views/login_signup/component/button.dart';
import 'package:app_store/packages/views/login_signup/login/login.dart';
import 'package:app_store/packages/views/login_signup/signup/body.dart';
import 'package:app_store/services/constant/path_images.dart';
import 'package:app_store/services/language/generated/key_lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PageEnter extends StatefulWidget {
  const PageEnter({super.key});

  @override
  State<PageEnter> createState() => _PageEnterState();
}

class _PageEnterState extends State<PageEnter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
                image: AssetImage(PathImage.splashPhoto),
                width: 100,
                height: 100),
            //******************************************************* */ name app

            const Text(
              KeyLang.appName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ).animate().fadeIn().rotate(delay: const Duration(seconds: 2)),
            //************************************************************ */ weclome
            const SizedBox(height: 100),
            const Text(
              'Welcome Back',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
                .animate(
                    onPlay: (controller) => controller.repeat(reverse: true))
                .fadeOut(curve: Curves.easeInBack),

            //********************************button login and push to another page
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  );
                  Navigator.pushReplacement(context, route);
                },
                child: const Button(textButton: KeyLang.login)),

            /////***********************************************signUP  and push to another page*/
            InkWell(
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SelecltBuyerORSeller(),
                  );
                  Navigator.pushReplacement(context, route);
                },
                child: const Button(textButton: KeyLang.signup)),
          ]).animate().fadeIn().scaleXY(),
        ),
      ),
    );
  }
}
