import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodban/widgets/popular_tab.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with SingleTickerProviderStateMixin {
   late TabController _tabController;
   @override
   void initState() {
    _tabController=TabController(length: 4,vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
     super.initState();
     
   }

   _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
   }

   @override
   void dispose() {
     _tabController.dispose();
     super.dispose();
   }

   //todo list taring
   final List<String> categories=[
    "papular",
    "circket Deels",
    "strong peps Deels",
    "All new"
   ];

   final List <Map<String ,String>>popularItems=[
    {
      "title":"circet deel  2",
      "price":"Rs.456 ",
      "oldPrice":"Rs .832",
      "image":"assets/cricket_deal_2.jpg"

    },
     {
      "title":"checken fajita",
      "price":"from. 456 ",
      "oldPrice":"Rs .832",
      "image":"assets/chicken_fajita.jpg"

    },
     {
      "title":"checken tikta salad",
      "price":"from. 456 00 ",
      "image":"assets/chicken_tikka_salad.png"

    },
      {
      "title":"checken tikta salad",
      "price":"from. 456 00 ",
      "image":"assets/chicken_tikka_salad.png"

    },
      {
      "title":"checken tikta salad",
      "price":"from. 456 00 ",
      "image":"assets/chicken_tikka_salad.png"

    },
    {
      "title":"checken fajita",
      "price":"from. 456 ",
      "oldPrice":"Rs .832",
      "image":"assets/chicken_fajita.jpg"

    }
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
           icon: Icon(Icons.arrow_back,color: Color(0xFFDF1C6E),)),
           title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivery',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
                Text('13-30 min',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFFDF1C6E)
              ),)
            ],
           ),
           actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border_outlined,color: Color(0xFFDF1C6E),
              )),
               IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.share_outlined,color: Color(0xFFDF1C6E),
              )),
               IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search,color: Color(0xFFDF1C6E),
              ))
           ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/subway_logo.jpg',height: 70,),
                    SizedBox(width: 8,),
                    Text('subway',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),)
    
                    ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(child: Text(
                      '1.5km away | rs .99.00 delevery | Rs. 249.00 minumum services fee aplies',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54

                      ),
                    )),
                    TextButton(
                      onPressed: (){}, 
                      child: Text('More info',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDF1C6E)
                      ),
                      ))
                  ],

                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(
                      Icons.star_outline
                    ),
                    SizedBox(width: 5,),
                    Text('1.5',style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 5,),

                     Text('1000 rating',style: TextStyle(color: Colors.black54,fontSize: 13),),
                     Spacer(),
                      TextButton(
                      onPressed: (){}, 
                      child: Text('see review',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDF1C6E)
                      ),
                      ))
                     

                    
                  ],
                ),
                 Row(
                  children: [
                    Icon(
                      CupertinoIcons.clock,
                      color: Color(0xFFDF1C6E)
                    ),
                    SizedBox(width: 5,),
                    Text('Delivaray',style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 5,),

                     Text('15-30 min',style: TextStyle(color: Colors.black,fontSize: 13),),
                     Spacer(),
                      TextButton(
                      onPressed: (){}, 
                      child: Text('Onchage',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54)
                      ),
                      )
                     

                    
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Image.asset('assets/voucher_panda.png',height: 25,width: 25,fit: BoxFit.cover,),
                    SizedBox(width: 10,),
                    Text('Availble deals',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                       color: Color(0xFFDF1C6E).withOpacity(0.07),
                       borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/percentage_icon.png',height: 20,width: 20,fit: BoxFit.cover,),
                          SizedBox(width: 10,),
                          Text('Rs. 234 off',style: TextStyle(
                            fontWeight: FontWeight.bold,
                               color: Color(0xFFDF1C6E)
                          ),)

                        ],
                      ),
                      SizedBox(height: 8,),
                       Text('Min order Rs . 230 , avoid for selecetd items \anAouto-applaid ',style: TextStyle(
                            fontWeight: FontWeight.w500,
                               color: Colors.black54,
                               fontSize: 17
                          ),)



                  ],),
                ),
                SizedBox(height: 16,),
                TabBar(
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  isScrollable: true,
                  indicatorSize:TabBarIndicatorSize.tab ,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor:   Color(0xFFDF1C6E),
                  indicatorColor:  Color(0xFFDF1C6E),
                  indicatorWeight: 3,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                  
                  tabs: [
                    Tab(text: "popular",)  ,
                    Tab(text: "Circile Deals",),  
                    Tab(text: "Strong pepiws Deals",), 
                    Tab(text: "All New",), 


                  ]),
                  Center(
                    child: [
                       PopularTab(popularItems: popularItems),

                      Center(
                        
                        child: Text('Popular'),
                        
                      ),
                       Center(
                        child: Text('Circile Deals'),
                      ),
                       Center(
                        child: Text('Strong pepiws Deals'),
                      ),
                       Center(
                        child: Text('All New'),
                      )
                    ][_tabController.index]
                    
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}