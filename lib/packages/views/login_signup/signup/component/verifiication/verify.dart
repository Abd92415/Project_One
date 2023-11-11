import 'package:app_store/packages/views/home/sellerHome/pagehome.dart';
import 'package:app_store/packages/views/login_signup/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../seller/reg_seller.dart';

class Pageverified extends StatelessWidget {
  const Pageverified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('verification code'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Vefication Code',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 10),
            Text(
              '\t\twe have the sent code to ',
              style: TextStyle(color: Colors.grey[350]),
            ),
            Row(
              children: [
                //*email address dynamic
                const Text(
                  '\t\t\t\t Email@aslcnval.com',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RigesterSeller(),
                        )),
                    child: const Text(
                      'Change Your Email ?',
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
            const SizedBox(height: 20),
            formVerified(context),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'resend code after ',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 5),
              Animate().custom(
                duration: 3.minutes,
                begin: 180,
                end: 0,
                builder: (context, value, child) => Text(
                  '${value.round()}\tseconds ',
                ),
              )
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {}, child: const Button(textButton: 'Resend')),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PageHomeSeller(),
                          ));
                    },
                    child: const Button(textButton: 'Confirm')),
              ],
            )
          ],
        ),
      ),
    );
  }

//*function create form verified
  Form formVerified(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) FocusScope.of(context).nextFocus();
              },
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: const InputDecoration(counterText: ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              onSaved: (pin2) {},
              onChanged: (value) {
                if (value.length == 1) FocusScope.of(context).nextFocus();
              },
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: const InputDecoration(counterText: ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) FocusScope.of(context).nextFocus();
              },
              onSaved: (pin3) {},
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: const InputDecoration(counterText: ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              onSaved: (pin4) {},
              onChanged: (value) {
                if (value.length == 1) FocusScope.of(context).nextFocus();
              },
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: const InputDecoration(counterText: ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          )
        ],
      ),
    );
  }
}
