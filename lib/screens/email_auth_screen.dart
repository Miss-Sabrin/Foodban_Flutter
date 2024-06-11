import 'package:flutter/material.dart';
import 'package:foodban/screens/loginwith_email_screen.dart';
import 'package:foodban/widgets/custom_text_field.dart';
import 'package:foodban/widgets/custom_textbutton.dart';

class EmialAuthScreen extends StatefulWidget {
   EmialAuthScreen({super.key});

  @override
  State<EmialAuthScreen> createState() => _EmialAuthScreenState();
}

class _EmialAuthScreenState extends State<EmialAuthScreen> {
TextEditingController emailController=TextEditingController();

String emailText="";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      
      appBar: AppBar(
     backgroundColor: Colors.white,
     foregroundColor: Color(0xFFE21A70),

        actions: [
          TextButton(onPressed: (){}, 
          child: Text("continus",style: TextStyle(
            color:  emailText.isEmpty? Colors.grey[400]  : Color(0xFFE21A70),

          )
            
           
))
        ],
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 15,bottom: 20),
              child: Image.asset('assets/email_icon.png',width: 60,),),
              Text(" what\'s your email ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),

              Text(" we\'all check you have an account ",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 30,),
              CustomTextField(
                
                labelText: "email",
                 controller: emailController,
                 onChnaged: (value) {
                  setState(() {
                    emailText=value;
                    
                  });
                  
                   
                 },
                 
                 
                 
                 )

            ],
          )),


          Divider(
            height: 40,
            color: Colors.grey[300],
          ),
          CustomTextbutton(
            text: 'continous',
             isDisable: emailText.isEmpty, 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithEmailSreen()
              
              ),            
              
              );
              
            },
            )
        ],
      ),),
    );
  }
}