import 'package:batal/Pages/service_detail.dart';
import 'package:batal/hover/onhover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class Clients extends StatefulWidget {
  const Clients({super.key});

  @override
  State<Clients> createState() => _OfferState();
}

class _OfferState extends State<Clients> {
  @override
  Widget build(BuildContext context) {
    List<String> img=[
      'assets/emmar.png',
      'assets/mbm.png',
      'assets/agnice.jpg',
      'assets/aljiada.png',
      'assets/almadena.png',
      'assets/jumbo2.jpg',
      'assets/eastern.jpg',
      'assets/indigo.jpg'
    ] ;
    bool highlight = false;
    bool isHover = false;
    return  Container(
      height: 180,

      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('OUR CLIENTS',
          //   style: GoogleFonts.sofiaSans(
          //     fontSize : 20,
          //     fontWeight: FontWeight.bold,
          //   ),),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: img.length ,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index){
                  return   OnHover(
                    builder: (isHovered){
                      return InkWell(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const ServiceDetails()),
                          // );
                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            // color: Colors.blueGrey,
                            margin: EdgeInsets.all(10),
                            child: Image.asset(img[index], fit: BoxFit.contain,)
                        ),
                      );
                    },

                  );



                }),
          ),
        ],
      ),

    );
  }
}
