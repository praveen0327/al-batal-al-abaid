import 'package:batal/Pages/service_detail.dart';
import 'package:batal/hover/onhover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    List<String> img=[
      'assets/o1.png',
      'assets/o2.png',
      'assets/o3.png',
      'assets/o1.png',
    ] ;
    bool highlight = false;
    bool isHover = false;
    return  Container(
        height: MediaQuery.of(context).size.height/2,

      child:
          Column(
            children: [
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
                            height: 220,
                            width: 320,
                            // color: Colors.blueGrey,
                            margin: EdgeInsets.all(30),
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
