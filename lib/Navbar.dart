import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Navbar extends StatelessWidget {
  const Navbar({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Row(
              children: [
                Text("AL BATAL",
                    style: GoogleFonts.lexendMega(
                        fontSize : 20,
                        fontWeight: FontWeight.bold,
                    )
                ),
                const SizedBox(width: 5,),
                 Text("AL ABIAD",
                  style: GoogleFonts.lexendMega(
                      fontSize : 22,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              children: [
             const  InkWell(
                  child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text("Home",style: TextStyle(color: Colors.black),)),
                ),
                const  SizedBox(width: 50,),
                const   InkWell(
                  child: Text("Offers",style: TextStyle(color: Colors.black),),
                ),
                const  SizedBox(width: 50,),
                const InkWell(
                  child: Text("Our Services",style: TextStyle(color: Colors.black),),
                ),
                const SizedBox(width: 50,),
                const InkWell(
                  child: Text("About Us",style: TextStyle(color: Colors.black,),),
                ),
                const SizedBox(width: 50,),
                 MaterialButton(
                 color: Colors.blue,
                 shape:  const RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(
                     Radius.circular(20),
                   )
                 ),
                  onPressed: () {},
                  child: const Text("Login",style: TextStyle(color: Colors.white),) ,
                )
              ],
            )
          ],
        ),

    );
  }
}
