import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/helpers/constants.dart';
import 'package:web_project/routing/routes.dart';

import '../../constants/style.dart';
import '../../layout.dart';
import '../../widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  Expanded(
                    child: Container(

                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  CustomText(text: 'Welcome back to admin panel',color: lightGrey,),
                ],
              ),

              SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'abc@domain.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),

              SizedBox(height: 15),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '******',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      CustomText(text:'Remember Me'),
                    ],
                  ),

                  CustomText(text:'Forgot Password',color: active,),
                ],
              ),
            
              SizedBox(height: 15),

              InkWell(
                onTap: () async{
                  Get.offAllNamed(RootRoute);
                  // DocumentSnapshot data = await firebaseFirestore.collection('users').doc('gPsUrDwpy08jyz0ONu7F').get();
                  // String name  = (data.data() as Map<String , dynamic>)['name'];
                  // print(name);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: 'Login',
                    color: Colors.white,
                  ),
                ),
              ),
            
              SizedBox(height: 15),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Do not have admin credentials? '),
                    TextSpan(text: 'Request credentials!',style: TextStyle(color: active))
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}