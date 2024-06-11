import 'package:flutter/material.dart';
import 'package:foodban/screens/product_screen.dart';

class PopularTab extends StatelessWidget {
  final List<Map<String ,String>>popularItems;

  const PopularTab({super.key,required this.popularItems});

  @override
  Widget build(BuildContext context) {
    return
    
     ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        SizedBox(height: 20,),
        Text('Popular',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
          SizedBox(height: 5,),
        Text('Most order right now',style: TextStyle(
         
        ),),
        SizedBox(height: 16,),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1
          ),
          itemCount: popularItems.length,
          itemBuilder: (BuildContext context, int index) {
            final items=popularItems[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2
                    )
                  ]

                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(items['image']!,
                        fit: BoxFit.cover,),
                      ) ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.3),
                                Colors.transparent
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                              
                              
                              )
                          ),
                          child: Text(items['title']!,style: 
                          TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 30,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(items['price']!,style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                              ),),
                              if(items.containsKey("oldPrice"))
                              Padding(padding: EdgeInsets.only(left: 8),
                              child: Text(items['oldPrice']!,style: TextStyle(
                                fontSize: 13,
                                color: Colors.black26,
                                decoration: TextDecoration.lineThrough
                              ),),)
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            );
          },
        ),


      ],
    );
  }
}