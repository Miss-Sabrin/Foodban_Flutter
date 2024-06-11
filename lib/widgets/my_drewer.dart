import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class MyDrewer extends StatelessWidget {

ListTile listTtile(BuildContext context, String text,  IconData? icon,VoidCallback onTap){
  return icon== null ? ListTile(
    onTap: onTap,
    title: Text(text,style: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),),
  ):ListTile(
     onTap: onTap,
     leading: Icon(icon,color:Color(0xFFFF2BB5) ),
    title: Text(text,style: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),),
  );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(builder: (c){
            return DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFF2BB2),
                border: Border.all(
                  color: Color(0xFFFF2BB5)
                )
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   width: 70,
                //   height: 70,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     //color: Colors.white
                //   ),
                Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InstaImageViewer(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/sab.jpg'),
                         
                           // Text('Sabrina',style: TextStyle(color: Color(0xFFFF2BB5),fontWeight: FontWeight.bold,fontSize: 30),),
                          ),
                      ),
                         SizedBox(width: 20,),
                        Text('Sabrina Omar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                       
                    ],
                  ),
                  
                  
                  
                
               Text('Dear Programmmer',style: 
               TextStyle(
                color: Colors.white,
               fontWeight: FontWeight.w500,),),

                //

              ],
              ),
            );
          }),
          //todo qenta icons inta kabilawane sabrine la soco haku warerin waxa qortay 😂✌
          Column(
            children: [
              listTtile(context,
               "Voucher & Offers", 
               Icons.local_offer_outlined,
                (){}
                
                ),
                 listTtile(context,
               "Favorites", 
               Icons.favorite_outline_rounded,
                (){}
                
                ),
                  listTtile(context,
                  "Order & reodering ", 
                   Icons.my_library_books_outlined,
                (){}
                
                ),
                 listTtile(context,
               "Adress", 
               Icons.location_on_outlined,
                (){}
                
                ),
                  listTtile(context,
               "paymant methods", 
               Icons.payment_rounded,
                (){}
                
                ),
                  listTtile(context,
               "Hepl center", 
               Icons.help_center_outlined,
                (){}
                
                ),
                  listTtile(context,
                "Invite freinds", 
               Icons.wallet_giftcard_outlined,
                (){}
                
                ),
                Divider(),
                listTtile(context, "Settings", null, (){}),
                listTtile(context, "Terms & condition / privacy", null, (){}),
                listTtile(context, "Logout", null, (){})

            ],
          )
        ],
      ),
    );
  }
}