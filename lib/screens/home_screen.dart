import 'package:electrical_store/constant.dart';
import 'package:electrical_store/widgets/Home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
}

AppBar homeAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    title: Text('مرحبا بكم بمتجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai')),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
  );
}
