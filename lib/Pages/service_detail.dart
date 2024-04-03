import 'package:batal/Pages/contactForm.dart';
import 'package:batal/Utils/extension.dart';
import 'package:batal/modals/service_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/customInputText.dart';

class ServiceDetails extends StatefulWidget {

  const ServiceDetails({super.key, required this.serviceName, required this.serviceImg, required this.serviceDesc});
  // final String serviceData;
  final  String serviceName ;
  final String   serviceDesc;
  final String serviceImg;
  @override
  State<ServiceDetails> createState() => ServiceDetailsState();
}

class ServiceDetailsState extends State<ServiceDetails> {
  // final ServiceData serviceDat = widget.serviceData;
  final formKey = GlobalKey<FormState>();
  String? email;


  @override
  Widget build(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.me/+971569697475?text-Hi');
    void contactWhatsapp () async{
      String phoneNumber = '+971569697475';
      // var URL = 'http://wa.me/${phoneNumber}?text-Hi';
      // final Uri phone = Uri.parse('tel:+971-56-9697475');
      final Uri whatsApp = Uri.parse('https://wa.me/${phoneNumber}?text-Hi');
      await launchUrl(whatsApp);
    }

    return  Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height/2,

      child: Row(
        children: [
          // Text(widget.serverIP),
         Expanded(
           flex: 2,

           child: Column(

             children: [
               SizedBox(height: 25,),
               Text('Available Offers',
                 style: GoogleFonts.sofiaSans(
                   fontSize : 20,
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.none,
                   color: Colors.black54
                 ),),
               SizedBox(height: 5,),
               Container(

                 padding: const EdgeInsets.all(15),
                 height: 180,
                 width: 350,
                 child: Image.asset("assets/o1.png",fit: BoxFit.fill,),
               ),
               Container(

                 padding: const EdgeInsets.all(15),
                 height: 180,
                 width: 350,
                 child: Image.asset("assets/o2.png",fit: BoxFit.fill,),
               ),
               Container(

                 padding: const EdgeInsets.all(15),
                 height: 180,
                 width: 350,
                 child: Image.asset("assets/o3.png",fit: BoxFit.fill,),
               ),
             ],
           ),
         ),

          Expanded(
            flex: 2,
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                // border: Border.all(
                //   color: Colors.black,
                //   width: 0.5,
                // ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 249, 251, 255),
                    Color.fromARGB(228, 220, 228, 245)
                  ],
                )
            ),

            padding: const EdgeInsets.all(20),
            child:  Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(widget.serviceImg,fit: BoxFit.fill,
                    height: 200,
                    width: 400,
                  ),
                ),
                const SizedBox(height: 40,),
                 Text(widget.serviceName ,
                  style: GoogleFonts.lexendMega(
                    fontSize : 20,
                    decoration: TextDecoration.none,
                    color: Colors.blueAccent,
                  ),),
                const SizedBox(height: 30,),
                 Text(widget.serviceDesc,
                  style: GoogleFonts.sofiaSans(
                      fontSize : 14,
                      decoration: TextDecoration.none,
                      color: Colors.black54,
                  ),),
                const SizedBox(height: 30,),
                Container(
                  width: 200,
                  child: MaterialButton(
                    color: Colors.green,
                    shape:  const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                    ),
                    // minWidth:50,
                    height: 50,
                    onPressed: () { launchUrl(whatsApp); },
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("whatsapp.png",height: 25,width: 25,),
                        SizedBox(width: 15,),
                        Text("GET SERVICE",
                          style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ) ,
                  ),
                )

              ],
            ),
          ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.blueAccent,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),

              ),

              child: Container(
                color: Colors.blueGrey,
                margin: const EdgeInsets.all(20),
                child:  Column(
                  children: [
                    SizedBox(height: 40,),
                    Text("Contact Us" ,

                        style: GoogleFonts.lexendMega(
                          fontSize : 40,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                      ),),
                    SizedBox(height: 10,),
                    Text("Get a call back in few minutes" ,
                      style: GoogleFonts.sofiaSans(
                      fontSize : 12,
                      color: Colors.white,
                      fontWeight : FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),),
                    SizedBox(height: 20,),
                    Expanded(
                     child: ContactForm(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
