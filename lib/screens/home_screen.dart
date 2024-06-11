import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodban/screens/shop_screen.dart';
import 'package:foodban/widgets/my_drewer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>>items=[
    {
      "title":"Food Delivaray",
      "subtitle":"send parcel in a \antap",
      "imagePath":"assets/Food_Delivery.png"
    },
     {
      "title":"pandamart",
      "subtitle":"top becomes in ..",
      "imagePath":"assets/pandamart.png"
    },
     {
      "title":"shops",
      "subtitle":"try to sell",
      "imagePath":"assets/shops.png"
    },
      {
      "title":"pic-up",
      "subtitle":"success to\n call",
      "imagePath":"assets/pick_up.png"
    },
      {
      "title":"pandogo",
      "subtitle":"try to sell",
      "imagePath":"assets/pandago.png"
    }

  ];

  final List<Map<String,dynamic>> resturants=[
    {
      "name":"Buger house",
      "rating":"2.3",
      "reviews":"200",
      "imagepath":"assets/Burger House.jpg",
      "minOrder":"pkr 209 minimum",
      "cusine":"waranabata",
      "time":"20-2-2020",
      "discount":"10% off",
      "delivery":"free delivery"


    },
      {
      "name":"subway",
      "rating":"2.3",
      "reviews":"200",
      "imagepath":"assets/subway.jpg",
      "minOrder":"pkr 209 minimum",
      "cusine":"waranabata",
      "time":"20-2-2020",
      "discount":"1% off",
      "delivery":"free delivery"


    },
    {
      "name":"Buger house",
      "rating":"2.3",
      "reviews":"200",
      "imagepath":"assets/Pizza House.jpg",
      "minOrder":"pkr 209 minimum",
      "cusine":"waranabata",
      "time":"20-2-2020",
      "discount":"20% off",
      "delivery":"free delivery"


    },
      {
      "name":"Buger house",
      "rating":"2.3",
      "reviews":"200",
      "imagepath":"assets/roasted_chicken_breast.jpg",
      "minOrder":"pkr 209 minimum",
      "cusine":"waranabata",
      "time":"20-2-2020",
      "discount":"40% off",
      "delivery":"free delivery"


    }


  ];

final  GlobalKey<ScaffoldState> _scafoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      backgroundColor:const Color(0xFFE1E2E5) ,
      drawer: MyDrewer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            pinned: true,
            expandedHeight: 130,
            backgroundColor: Color(0xFFFF2B82),
            leading: IconButton(
              onPressed: (){
                _scafoldKey.currentState?.openDrawer();

              },
               icon: Icon(Icons.menu_sharp,size: 30,),color: Colors.white,),
               title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Home',style: TextStyle(fontSize: 18,color: Colors.white),),
                  Text('your location adress will  bee here ....',style: TextStyle(fontSize: 13,color: Colors.white))
                ],
               ),
               actions: [
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.favorite_border_rounded,color: Colors.white,size: 30,)),
                //
                Stack(
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,)),

                      Positioned(
                        right: 10,
                        top: 25,
                        child: Container(
                          height: 16,
                          width: 16,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text('1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:  Color(0xFFFF2B82),
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        )
                      
                      )
                      
                  ],
                ),
               
              
               ],
                //!search
                flexibleSpace:FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 18),
                      child: Container(
                        margin:EdgeInsets.symmetric(horizontal: 16) ,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            prefixIcon: Icon(CupertinoIcons.search,
                            size: 30,
                            color: Colors.black54,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 12)
                          ),
                        ),
                      ),
                      )
                    ],
                  ),
                )
          ),
          //todo qebta body
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(padding: EdgeInsets.all(20),
                child: StaggeredGrid.count(
                  crossAxisCount:4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                       mainAxisCellCount: 3.1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26)
                          ),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[0]["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                    Text(items[0]["subtitle"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),)
                                ],
                              ),
                              ),
                              Padding(padding: EdgeInsets.all(8),
                              child: Image.asset(items[0]['imagePath']!,
                              height: 160,
                              fit: BoxFit.cover,
                              ),)

                            ],
                          ),

                        )),
                         StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                       mainAxisCellCount: 2.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[1]["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                    Text(items[1]["subtitle"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),)
                                ],
                              ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(padding: EdgeInsets.all(8),
                                child: Image.asset(items[1]['imagePath']!,
                                height: 90,
                                width: 100,
                                fit: BoxFit.cover,
                                ),),
                              )

                            ],
                          )

                        )),
                         StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                       mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                                            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[2]["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                    Text(items[2]["subtitle"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),)
                                ],
                              ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(padding: EdgeInsets.all(8),
                                child: Image.asset(items[2]['imagePath']!,
                               // height: 100,
                                fit: BoxFit.cover,
                                ),),
                              )
                            ],
                          ),

                        )),
                         StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                       mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26)
                          ),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                                            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[3]["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                    Text(items[2]["subtitle"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),)
                                ],
                              ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(padding: EdgeInsets.all(8),
                                child: Image.asset(items[3]['imagePath']!,
                               // height: 100,
                                fit: BoxFit.cover,
                                ),),
                              )
                            ],
                          ),

                        )),
                         StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                       mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26)
                          ),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                                            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[4]["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                    Text(items[4]["subtitle"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),)
                                ],
                              ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(padding: EdgeInsets.only(bottom: 5),
                                child: Image.asset(items[4]['imagePath']!,
                               height: 50,
                               width: 50,
                                fit: BoxFit.cover,
                                ),),
                              )
                            ],
                          ),

                        ))
                  ],
                   ),
                ),
                //!qebta danbe ❤🤞😋
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Free Delvry',style: TextStyle(
                          fontSize: 18,
                          fontWeight:  FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          height: 240,
                          width: double.infinity,
                          child: ListView.builder( 
                            scrollDirection: Axis.horizontal,
                            itemCount: resturants.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _buildResturantsItem(resturants[index]) ;
                            },
                          ),
                        )

                      ],
                      ),
                      ),
                      SizedBox(height: 50,)
                      
                    ],
                  ),
                )
               

              ]
            ))
        ],
      ),
    );
  }

  Widget _buildResturantsItem(Map<String ,dynamic> resturants){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopScreen()));
      },

      child: Container(
        width: 260,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
      
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                  child: Image.asset(
                    resturants['imagepath'],
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(resturants['discount'].isNotEmpty)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                        color:  Color(0xFFFF2B85),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)
                        ),
                        
                      ),
                      child: Text(resturants['discount'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    //todo delivery
                     Container(
                      margin: resturants['discount'].isNotEmpty 
                      ?EdgeInsets.only(top: 5):EdgeInsets.only(),
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                        color:  Color(0xFFFF2B85),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)
                        ),
                        
                      ),
                      child: Text(resturants['delivery'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),),
                    )
      
                  ],
                )
                
                
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(8),
            child: Column(
      
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(resturants["name"],style: TextStyle(fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.star,color:  Colors.orange,size: 18,),
                        SizedBox(width: 4,),
                        Text(resturants['rating'],style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12
                        ),),
                        SizedBox(width: 2,),
                        Text(
                          '(${resturants['reviews'] })' ,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 12
                          ),
                        )
                      ],
                    )
      
      
                  ],
                ),
                SizedBox(height: 8,),
                Text(
                  '${resturants['minOrder']} - ${resturants ['cuisine']}',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12
                  ),
                ),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Icon(Icons.access_time,color: Colors.black.withOpacity(0.6),
                      size: 16,
                      ),
                      SizedBox(width: 4,),
                      Text(resturants['time'],style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 12
                      ),),
                      SizedBox(width: 15,),
                      Icon(Icons.delivery_dining_outlined,
                      color:  Color(0xFFFF2B82),size: 16,),
                      SizedBox(width: 5,),
                      Text(resturants['delivery'],
                      style: TextStyle(
                        color:  Color(0xFFFF2B82),
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
                
              ],
            ),)
      
          ],
        ),
      
      ),
    );
  }
}