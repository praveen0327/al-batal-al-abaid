
import 'package:batal/Utils/extension.dart';
import 'package:flutter/material.dart';

import '../components/customInputText.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _HomeState();
}

class _HomeState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? name;
  String? phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _buildUI(),
    );
  }

  Widget _buildUI(){

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
            key: formKey,
            child: Column(
                children: [
                  CustomInputText(
                    hintText: "Enter Your Name",

                    // obscureText: true,
                    validator: (value) {
                      if(value!.isEmpty){
                        return("Enter valid Name");
                      }
                      return null;
                    },
                    onSaved: (val){
                      setState(() {
                        name = val;
                      });
                    },
                  ),
                  CustomInputText(
                    hintText: "Enter Your Email",
                    // obscureText: true,
                    validator: (value) {
                      if(value!.isEmpty || value!.isValidEmail){
                        return("Enter valid Email");
                      }
                      return null;
                    },
                    onSaved: (val){
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  CustomInputText(
                    hintText: "Enter Your Phone Number",
                    // obscureText: true,
                    validator: (value) {
                      if(value!.isEmpty ){
                        return("Enter valid Phone Number");
                      }
                      return null;
                    },
                    onSaved: (val){
                      setState(() {
                        phone = val;
                      });
                    },
                  ),

                  SizedBox(height: 30,),
                  MaterialButton(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    height: 50,
                    minWidth: 170,
                    shape:  const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                      onPressed: () {
                        if( formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(phone);
                        }
                      },
                    child: const Text("Submit",style: TextStyle(color: Colors.white),) ,
                  )
                ]
            )
        ),
      ),
    );
  }

}






