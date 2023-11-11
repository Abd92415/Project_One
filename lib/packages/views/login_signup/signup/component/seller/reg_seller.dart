import 'package:app_store/packages/views/login_signup/signup/component/seller/dropmenu.dart';
import 'package:app_store/packages/views/login_signup/signup/component/verifiication/verify.dart';
import 'package:flutter/material.dart';

import '../../../../../../services/language/generated/key_lang.dart';
import '../../../component/button.dart';
import '../../../component/text_pass.dart';
import '../../../component/text_username.dart';
import '../../../login/login.dart';

class RigesterSeller extends StatelessWidget {
  const RigesterSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            KeyLang.seller,
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Welcome back,Create your account !',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //*textFiald : fill the name user
                        const TextFieldUseAll(
                            hint: KeyLang.nameUser,
                            iconuse: Icons.person,
                            type: TextInputType.name),
                        const SizedBox(height: 10),
                        //************************textField :email user */
                        const TextFieldUseAll(
                          hint: KeyLang.email,
                          iconuse: Icons.email,
                          type: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10),
                        const TextFieldUseAll(
                            hint: KeyLang.projectName,
                            iconuse: Icons.work,
                            type: TextInputType.text),

                        const SizedBox(height: 10),
                        const TextFieldUseAll(
                            hint: KeyLang.phone,
                            iconuse: Icons.phone,
                            type: TextInputType.phone),

                        //**********************************************Textfailed password and confirm
                        const SizedBox(height: 10),
                        const TextFieldPassword(KeyLang.password),
                        const SizedBox(height: 10),
                        const DropDownMenuDepart(),
                        //************************************************************button signUp

                        const SizedBox(height: 40),
                        InkWell(
                            onTap: () {
                              var Route = MaterialPageRoute(
                                builder: (context) => const Pageverified(),
                              );
                              Navigator.push(context, Route);
                            },
                            child: const Button(textButton: KeyLang.signup)),

                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Divider(color: Colors.grey, height: 2),
                        ),
                        InkWell(
                          onTap: () {
                            var route = MaterialPageRoute(
                                builder: (context) => const LoginPage());
                            Navigator.push(context, route);
                          },
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.bottomCenter,
                              child: const Text('alredy Account ! click here',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12))),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
