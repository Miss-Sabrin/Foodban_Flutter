import 'package:flutter/material.dart';
import 'package:foodban/screens/home_screen.dart';
import 'package:foodban/widgets/custom_text_field.dart';
import 'package:foodban/widgets/custom_textbutton.dart';

class FilAccountInfoScreen extends StatefulWidget {
  const FilAccountInfoScreen({super.key});

  @override
  State<FilAccountInfoScreen> createState() => _FilAccountInfoScreenState();
}

class _FilAccountInfoScreenState extends State<FilAccountInfoScreen> {
    String firstNameText="";
  String passwordlText="";
  String lastNameText="";
  TextEditingController lastNameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController firstNameController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Color(0xFFE21A70),
      actions: [
         TextButton(onPressed: (){}, 
          child: Text("continus",style: TextStyle(
            color:  firstNameText.isEmpty ||lastNameText.isEmpty ||passwordlText.isEmpty ? Colors.grey[400]  : Color(0xFFE21A70),

          )
            
           
))
      ],


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
                  child: Image.asset('assets/profile_icon.png',width: 60,),),
                  Text("let's your started ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
               
                  Text(" first , let's create your foodpand account with dearprogrammerofficial@gmail.com ",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width /2-15,
                        padding: EdgeInsets.only(right: 7),
                        child:  CustomTextField(                
                   // noIcon: false,
                    labelText: "first name",
                     controller: firstNameController,
                     onChnaged: (value) {
                      setState(() {
                        firstNameText=value;                    
                      });                                     
                     },                                
                     ), 
                      ),
                        Container(
                        width: MediaQuery.of(context).size.width /2-15,
                        padding: EdgeInsets.only(right: 7),
                        child:  CustomTextField(                
                    //noIcon: false,
                    labelText: "last name",
                     controller: lastNameController,
                     onChnaged: (value) {
                      setState(() {
                        lastNameText=value;                    
                      });                                     
                     },                                
                     ), 
                      )
               
                    ],
                  ),
                
                     SizedBox(height: 20,),
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
            text: 'continous',
             isDisable: passwordlText.isEmpty||
             lastNameText.isEmpty||
             firstNameText.isEmpty,
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
           
              
            },
            ),
            SizedBox(height: 10,),
          
            
            ],
          )
         
        ]
      ),
      ),
    );
  }
}