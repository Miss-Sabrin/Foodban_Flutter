import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodban/screens/email_auth_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2BB5),
      body:Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/1.8,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(padding: 
                  EdgeInsets.all(15),
                  child: Icon(Icons.close,color: Colors.white,),

                  ),
                ),
                Center(
                  child: Image.asset('assets/auth_back.png',height: 300,),
                )

              ],
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 7,horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(

                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('sing up or log in',style: 
                      TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 8,),
                      Text('select yours prefered method continous',
                      textAlign: TextAlign.left,
                      style: 
                      TextStyle(fontSize: 12,
                      
                      ),),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    
                  },
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                      color: Colors.grey[300]!
                      )
                    ),
                    child: Row(children: [
                      Icon(FontAwesomeIcons.google,size: 25,),
                      SizedBox(width: 15,),
                      //Image.asset('assets/google_icon.webp',width: 25,  repeat: ImageRepeat.repeat,),
                      Text('Continous with Google',style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),)
                    ],),

                  ),
                ),
                 SizedBox(height: 15,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF1878F3),
                          borderRadius: BorderRadius.circular(10),


                      border: Border.all(
                      color: Colors.grey[300]!
                      )
                    ),
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     Icon(FontAwesomeIcons.facebook,size: 25,color: Colors.white,),
                     SizedBox(width: 15,),
                     // Image.asset('assets/facebook_icon.png',width: 25,),
                      Text('Continous with Google',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),),
                     // SizedBox(width: 20,)
                    ],),

                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(color: Colors.grey[300],)
                    ),
                    Text('  or  ',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[400]
                    ),),
                    Expanded(child: Divider(color: Colors.grey[300],))
                  ],
                ),

                  SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmialAuthScreen()));
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
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     Icon(Icons.mark_email_read_outlined,size: 25,color:  Color(0xFFE21A70),),
                     SizedBox(width: 15,),
                     // Image.asset('assets/facebook_icon.png',width: 25,),
                      Text('Continous with Email',style: TextStyle(
                        color: Color(0xFFE21A70),
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),),
                     // SizedBox(width: 20,)
                    ],),

                  ),
                ),

              ],
            ),
          ))


        ],
      ) ,
    );
  }
}