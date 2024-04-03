import 'package:batal/Navbar.dart';
import 'package:batal/Pages/Landing.dart';
import 'package:batal/Pages/Offer.dart';
import 'package:batal/Pages/clients.dart';
import 'package:batal/Pages/footer.dart';
import 'package:batal/Pages/service_detail.dart';
import 'package:batal/Pages/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:  SingleChildScrollView(
        child: Column(
          children: [
            // ServiceDetails()
            Navbar(),
            Landing(),
            SizedBox(height: 50,),
            Offer(),
            SizedBox(height: 70,),
            Services(),
            SizedBox(height: 70,),
            Clients(),
            SizedBox(height: 50,),
            Footer()
          ],
        ),
      ),
    );
  }
}
