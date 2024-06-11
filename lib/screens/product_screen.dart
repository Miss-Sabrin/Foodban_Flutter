import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(
                  'assets/cricket_deal_2.jpg'
                ))
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: 
                  Icon(Icons.close,
                  color: Color(0xFFDF1C6E),
                  ),),
                ),
                
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Circket Deal 2",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
              Column(
                children: [
                  Text("Rs. 347.00",style: TextStyle(
                fontSize: 13,
                color: Colors.grey
              ),),
              Text("Rs. 247.00",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold

              ),)



                ],
              )

               

            ],
          ),
          SizedBox(height: 5,),
            Text("6 inch sub & ml drink",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black54

              ),),
              Divider(
                height: 40,
                color: Colors.black54,
              ),
              SizedBox(height: 6,),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                 color: Color(0xFFDF1C6E).withOpacity(0.07),
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(
                   color: Colors.black26
                 )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text("Choose your Bread",style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold

              ),),
              Container(
                padding:EdgeInsets.symmetric(vertical: 5,horizontal: 8) ,
                decoration: BoxDecoration(
                   color: Color(0xFFDF1C6E),
                   borderRadius: BorderRadius.circular(15),
                ),
                child:   Text("Required",style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white

              ),),
              ),

                      ],
                    ),
                    SizedBox(height: 8,),
                      Text("select one",style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                 color: Color(0xFFDF1C6E),

              ),),
              SizedBox(height: 8,),
              RadioListTile(
                value: 'Italian',
                 groupValue: "Bread",
                 title: Text('somalia',style: TextStyle(
                  fontSize: 15
                 ),),
                 secondary: Text('Free',style: TextStyle(
                  fontSize: 15
                 ),),
                 activeColor: Color(0xFFDF1C6E),
                  onChanged: (valuew){}),
                   RadioListTile(
                value: 'Wheat',
                 groupValue: "Bread",
                 title: Text('Wheat',style: TextStyle(
                  fontSize: 15
                 ),),
                 secondary: Text('Free',style: TextStyle(
                  fontSize: 15
                 ),),
                 activeColor: Color(0xFFDF1C6E),
                  onChanged: (valuew){}),
                   RadioListTile(
                value: 'Mogadisho',
                 groupValue: "Bread",
                 title: Text('Mogadisho',style: TextStyle(
                  fontSize: 15
                 ),),
                 secondary: Text('Free',style: TextStyle(
                  fontSize: 15
                 ),),
                 activeColor: Color(0xFFDF1C6E),
                  onChanged: (valuew){}),
                   RadioListTile(
                value: 'Hargeisa',
                 groupValue: "Bread",
                 title: Text('Hargeisa',style: TextStyle(
                  fontSize: 15
                 ),),
                 secondary: Text('Free',style: TextStyle(
                  fontSize: 15
                 ),),
                 activeColor: Color(0xFFDF1C6E),
                  onChanged: (valuew){})
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text('Special Instaruction',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
               SizedBox(height: 5,),
              Text('please let us know if you are allergic to anything or if we need to avoid anything',style: TextStyle(
                fontSize: 16,
              ),),
              SizedBox(height: 30,),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'e.g  talk about what you want ?...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: EdgeInsets.all(12)
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(padding: EdgeInsets.only(right: 10),
                child: Text('0/500'),
                ),
              ),
               SizedBox(height: 30,),
              Text('If this product is not available ...',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
               SizedBox(height: 15,),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ListTile(
                  title: Text('Remove is from my order'),
                  trailing: Icon(Icons.arrow_back_ios,
                   color: Color(0xFFDF1C6E),
                  ),
                ),

               ),
               SizedBox(height: 30,)

          
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 2
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.remove,color: Colors.white,size: 30,),
                ),
                SizedBox(width: 15,),
                Text('1',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  
                  ),),
                SizedBox(width: 15,),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFFDF1C6E),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add,color: Colors.white,size: 30,),
                )
              ],
            ),
            InkWell(
              onTap: () {
                
              },
              child: Container(
                width: MediaQuery.of(context).size.width /2,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                   color: Color(0xFFDF1C6E),
                   borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: 
                Text('Add To Cart',style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),),
              ),
            )
          ],
        ),
      ),

    );
  }
}