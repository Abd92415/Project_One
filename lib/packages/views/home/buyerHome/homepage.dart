import 'package:app_store/packages/views/home/bodyhome/body.dart';
import 'package:app_store/packages/views/home/buyerHome/component/navigationButton.dart';
import 'package:app_store/services/language/generated/key_lang.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: bulidAppBar(context),
        body: const Body(),
        bottomNavigationBar: const NavigationConvexAppBar(),
      ),
    );
  }
}

AppBar bulidAppBar(context) {
  return AppBar(
    title: searchText(context),
    centerTitle: true,
  );
}

Container searchText(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: const BorderRadius.all(Radius.circular(15))),
    width: MediaQuery.of(context).size.width / 2,
    child: const TextField(
      decoration: InputDecoration(hintText: 'Search', icon: Icon(Icons.search)),
      clipBehavior: Clip.antiAlias,
    ),
  );
}
