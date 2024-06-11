import 'package:flutter/material.dart';
import 'package:foodban/screens/auth_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

       body:
         SafeArea(
           child: Padding(padding: EdgeInsets.all(16),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                          children: [
                           Image.asset('assets/foodpanda_location.png',height: 300,),                                   SizedBox(height: 32,),
                          Text('Allow location access on the next screen for : ',
                          style: TextStyle(
                                               fontSize: 22,
                                   fontWeight: FontWeight.bold
                                       ),
                                       textAlign: TextAlign.left,
                                       ),
                                       SizedBox(height: 32,),
                                       Row(
                                         children: [
                                           Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color(0xFFFF2BB5).withOpacity(0.15),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.delivery_dining,color: Color(0xFFFF2BB5),size: 30,),
                                           ),
                                           SizedBox(width: 8,),
                                           Expanded(child: Text(
                          'Finding the best resturant and shop near you',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6)
                          ),
                                           ))
                         
                                         ],
                                       ),
                                        SizedBox(height: 32,),
                                       Row(
                                         children: [
                                           Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color(0xFFFF2BB5).withOpacity(0.15),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.store_outlined,color: Color(0xFFFF2BB5),size: 30,),
                                           ),
                                           SizedBox(width: 8,),
                                           Expanded(child: Text(
                          'Faster and more accurate delevray',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6)
                          ),
                                           ))
                         
                                         ],
                                       )
                                      
                         
                                     ],
                         ),
                       ),
                       SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthScreen()));
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE21A70),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)
                            )
                          ),
                          child: Text('Continous',style: TextStyle(fontSize: 15,color: Colors.white),)),

                       )
                     ],
                   ),
                   ),
                   
         ),
      );
    
  }
}