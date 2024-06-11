import 'package:flutter/material.dart';
import 'package:foodban/widgets/custom_textbutton.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() => _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
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
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 20),
                child: Image.asset('assets/email_icon.png',width: 80,),),
                Text("verifay your email adress  to get started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
             
                Text(" this help us to mitifate fraud and keep your personal data ",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 30,),
                // CustomTextField(
                //   noIcon: false,
                //   labelText: "password",
                //    controller: passwordController,
                //    onChnaged: (value) {
                //     setState(() {
                //       passwordlText=value;
                      
                //     });
                    
                     
                   //},
                   
                   
                   //
                  // ),
                   SizedBox(height: 20,),
           

              ],
                       ),
           ),
          Column(
            children: [
              Divider(
                height: 40,
                color: Colors.grey[400],
              ),
               CustomTextbutton(
            text: 'send verifaction email',
             isDisable: false, 
             onPressed: (){},
               ),
        
            
            
            ],
          )
         
        ]
      ),
      ),
 
   
    );
  }
}