import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/2,
      color: Color.fromARGB(255, 3, 30, 84),
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                 child:  Row(
                    children: [
                      Text("AL BATAL",
                        // "alabiad@projects.com"
                        // "www.alabiadprojects.com"
                        style: GoogleFonts.lexendMega(
                            fontSize : 20,
                            fontWeight:FontWeight.bold,
                            color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("AL ABIAD",
                        style: GoogleFonts.lexendMega(
                            fontSize : 20,
                             color : Colors.white,
                             fontWeight:FontWeight.bold
                        ),
                      )
                    ],
                  )
              ),
              Container(
                 child:  Row(
                    children: [
                      Text("About Us",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Contact Us",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Customer Support",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Terms & Conditions",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Privacy Policy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
          
                        ),
                      )
                    ],
                  )
              ),
              Container(
                  child: MaterialButton(
                    color: Colors.white,
                    shape:  const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                    minWidth: 170,
                    height: 50,
          
                    onPressed: () {},
                    child: Row(
                      children: [

                        Icon(Icons.phone, size: 16,),
                        SizedBox(width: 5,),
                         Text("REQUEST CALL BACK",
                           style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),),

                      ],
                    ) ,
                  ),
          
              )
          
            ],
          ),
          Container(
            padding: EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/fac.png", height: 40,width: 40, ),
                SizedBox(width: 10,),
                Image.asset("assets/ins.png", height: 40,width: 40, ),
                SizedBox(width: 10,),
                Image.asset("assets/twi.png", height: 40,width: 40, ),
                // Icon(Icons.twit)
              ],
            ),
          )
        ],
      ),
      
    );
  }
}
