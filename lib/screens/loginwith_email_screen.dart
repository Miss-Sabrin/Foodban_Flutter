import 'package:flutter/material.dart';
import 'package:foodban/screens/fill_acount_info_screen.dart';
import 'package:foodban/screens/verification_email_screen.dart';
import 'package:foodban/widgets/custom_text_field.dart';
import 'package:foodban/widgets/custom_textbutton.dart';

class LoginWithEmailSreen extends StatefulWidget {
  const LoginWithEmailSreen({super.key});

  @override
  State<LoginWithEmailSreen> createState() => _LoginWithEmailSreenState();
}

class _LoginWithEmailSreenState extends State<LoginWithEmailSreen> {
  String emailText="";
  String passwordlText="";
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Color(0xFFE21A70),


      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Expanded(
            
             child: SingleChildScrollView(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15,bottom: 20),
                  child: Image.asset('assets/login_icon.png',width: 60,),),
                  Text("log in  with your email ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
               
                  Text(" log in with your passsowrd to dearprogrammer@gmail.com. or get a login link via email ",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(height: 30,),
                  CustomTextField(
                    noIcon: false,
                    labelText: "password",
                     controller: passwordController,
                     onChnaged: (value) {
                      setState(() {
                        passwordlText=value;
                        
                      });
                      
                       
                     },
                     
                     
                     
                     ),
                     SizedBox(height: 20,),
                     GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text('I forget my password ?',style: 
                      TextStyle( 
                         color: Color(0xFFE21A70,),
                         fontWeight: FontWeight.w700
                      
                      
               ),),
                     )
               
                ],
                         ),
             ),
           ),
          Column(
            children: [
              Divider(
                height: 40,
                color: Colors.grey[400],
              ),
               CustomTextbutton(
            text: 'log in with password',
             isDisable: passwordlText.isEmpty, 
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FilAccountInfoScreen()
              
              ),            
              
              );
              
            },
            ),
            SizedBox(height: 10,),
             InkWell(
                  onTap: (){
                   
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationEmailScreen()
              
              ),            
              
              );
              
            
                    
                  },
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),

                      border: Border.all(

                     color: Color(0xFFE21A70),
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //Icon(Icons.email_outlined,size: 25,  color: Color(0xFFE21A70),),
                      SizedBox(width: 15,),
                      //Image.asset('assets/google_icon.webp',width: 25,  repeat: ImageRepeat.repeat,),
                      Text('send my login link',style: TextStyle(
                        fontWeight: FontWeight.w600,
                          color: Color(0xFFE21A70),
                        fontSize: 15
                      ),)
                    ],),

                  ),
                ),
            
            ],
          )
         
        ]
      ),
      ),
    );
  }
}