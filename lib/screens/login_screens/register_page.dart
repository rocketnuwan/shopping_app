import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_textfield.dart';
import 'package:shopping_app/compononets/page_end_line.dart';
import 'package:shopping_app/compononets/social_buttons.dart';
import 'package:shopping_app/utils/app_colors.dart';



class RegistrationPage extends StatefulWidget {
  const RegistrationPage({ Key? key, }) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackground,
      appBar: AppBar(
      backgroundColor: grayBackground,
      elevation: 0,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.chevron_left_outlined,color: kwhite,),),
        ],
      ),
      ),
      body: Container(
        padding:const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Sing up",style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: kwhite
                ),),
              const SizedBox(height: 73,),
              const CustomTextField(lable: "name",),
              const SizedBox(
                height: 8,
              ),
        
              const CustomTextField(lable: "Email",),
        
              const SizedBox(
                height: 8,
              ),
        
              const CustomTextField(lable: "password",),
              
              const SizedBox(
                height: 16,
              ),
             Container(
               width: double.infinity,
               alignment: Alignment.centerRight,
               child:  SizedBox(
                 width: 200,
                 child: InkWell(
                   onTap: (){},
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: (const[
                        Text("Already have an account? ",style: TextStyle(fontSize: 15),),
                       Icon(Icons.arrow_forward_sharp,color: Color(0xFFDB3022),)
                     ])
                   ),
                 ),
               ),
             ),
             const SizedBox(height: 28,),
        
            SizedBox(
              
              width: double.infinity,
              height: 60,
              
              child: TextButton(
                onPressed: (){},
                 child: const Text("SING UP",style: TextStyle(fontWeight: FontWeight.bold),),
                 style: TextButton.styleFrom(
                   //backgroundColor: const Color(0xFFDB3022),
                   primary: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25)
                   )
                 ),
              
              ),
            ),
          
             const SizedBox(height: 50,),

            const Align(
               alignment: Alignment.center,
               child: Text("Or sign up with social account",style: TextStyle(fontSize: 15,),)) ,
                

              const SizedBox(height: 20,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    SocialButton(image: "google.png",ontab: (){},),
                    SocialButton(image: "facebook.png",ontab: (){},),
                     
                  ],
                ),
              ),
              
              const PageEndLine(),
              
            ],
          ),
        ),
      ),
    );
  }
}
