

import 'package:batal/Pages/service_detail.dart';
import 'package:batal/constant.dart';
import 'package:batal/modals/service_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../hover/onhover.dart';
class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServiceData> serviceList = Constant.serviceData;
    // ServiceData serviceDat;
   String g = "";
    return  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 246, 247, 248),
                Color.fromARGB(255, 244, 245, 253),
                Color.fromARGB(255, 246, 247, 248),
              ],
            )),
        // color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 25,),
               Text('OUR SERVICES',
                style: GoogleFonts.sofiaSans(
                  fontSize : 20,
                  fontWeight: FontWeight.bold,
                ),),
          
          
              Expanded(
                          child: GridView.builder(
                              itemCount: serviceList.length ,
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index){
                                return OnHover(
                                    builder: (isHovered){
                                  return  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>
                                          ServiceDetails(
                                           serviceName:  serviceList[index].name as String,
                                           serviceImg:  serviceList[index].img as String,
                                           serviceDesc:  serviceList[index].desc as String,
                                        ),
                                        ),
                                      );
                                      // modifidata(
                                      //     serviceList[index].name as String,
                                      //     serviceList[index].img as String,
                                      //     serviceList[index].desc as String
                                      // );
                                      // print(serviceList[index].name);
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,

                                        ),
                                    margin: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          // SizedBox(height: 15,),
                                          Image.asset(serviceList[index].img as String, height: 200,width: 450, fit: BoxFit.cover,),
                                          SizedBox(height: 5,),
                                          Text(serviceList[index].name as String,
                                             style: GoogleFonts.sofiaSans(
                                              fontSize : 16
                                          )
                                            ,),
          
                                          SizedBox(height: 5,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star, size: 14,),
                                              Text(serviceList[index].rate as String,
                                                style: const TextStyle(fontWeight: FontWeight.w500),),
                                              SizedBox(width: 5,),
                                              Text('(',
                                                style: const TextStyle(fontWeight: FontWeight.w500),),
                                              Text(serviceList[index].overall as String ,
                                                style: const TextStyle(fontWeight: FontWeight.w500),),
                                              Text(')' ,
                                                style: const TextStyle(fontWeight: FontWeight.w500),),
                                            ],
                                          )
          
                                        ],
                                      )
                                                                  ),
                                  );
                                },);
                              }),
          
                      ),
          
            ],
          ),
        )
    );
  }
}

// void modifidata (a,b,c){
//    String d = a;
//   print(d);
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) =>
//       ServiceDetails(
//        serviceName:  a,
//        serviceImg:  "serviceList[index].img as String",
//        serviceDesc:  "serviceList[index].desc as String",
//     ),
//     ),
//   );
// }
