import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.me/+971569697475?text-Hi');
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height/1.2,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.blue,
            padding: const EdgeInsets.only(left: 50,right: 50),
            child:   Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                DefaultTextStyle(
                    style: GoogleFonts.lexendMega(
                        fontSize : 40,
                        color: Colors.blueGrey
                    ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('BEST TECHNICAL ',
                        
                      )
                    ],
                  
                    // child: Text("BEST TECHNICAL ",
                    //   style: GoogleFonts.lexendMega(
                    //       fontSize : 40
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("SERVICES",
                  // style: TextStyle(
                  //     color: Colors.blueGrey,
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.bold
                  // ),
                  style: GoogleFonts.lexendMega(
                    fontSize : 40,
                      color: Colors.blueGrey
                  ),

                ),
                SizedBox(height: 30,),
                Text("As a proficient company operating in Dubai,Dedicated Technical",
                  style: GoogleFonts.sofiaSans(
                      fontSize : 18
                  ),
                ),
                SizedBox(height: 10,),
                Text("Services always strives to meet the demands of its clients",
                  style: GoogleFonts.sofiaSans(
                      fontSize : 18
                  ),
                ),
                SizedBox(height: 10,),
                Text("with skill and capability.",
                  style: GoogleFonts.sofiaSans(
                      fontSize : 18
                  ),
                ),
                SizedBox(height: 40,),
                MouseRegion(
                  cursor: SystemMouseCursors.grab,
                  child: MaterialButton(
                    color: Colors.green,
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                    minWidth: 170,
                    height: 50,
                    onPressed: () {launchUrl(whatsApp);},
                    child: Text("Get Services",
                      style: TextStyle(color: Colors.white,fontSize: 12),
                    ) ,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/2,
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Image.asset("assets/lan3.jpg", fit: BoxFit.contain,),
          )
        ],
      ),
    );
  }
}
