import 'package:amazon_clone_ui/models/product_model.dart';
import 'package:amazon_clone_ui/screens/cart_screen.dart';
import 'package:amazon_clone_ui/widgets/product_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar:AppBar( 
        backgroundColor: Colors.white,
        leading: Padding( 
          padding: EdgeInsets.only(left: 20),
          child: InkResponse( 
            onTap:  () => print('Menu'),
            child: Icon( 
              Icons.menu,
              size: 30,
              color: Colors.blueAccent

            ),
          ),
        ),
      title: Image( 
        image: AssetImage('assets/images/amazon_logo.jpg'),
        height: 30,
      ),
      centerTitle: true,
      actions: <Widget>[ 
       Stack( 
         children: <Widget>[ 
         Padding(
                padding: EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  
                ),
              ),

              Positioned( 
                bottom: 8,
                right: 16,
                child: Container( 
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration( 
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Center( 
                    child: Text( 
                      '5',
                      style: TextStyle( 
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
         ],


       ),
       Padding( 
         padding: EdgeInsets.only(right: 20),
         child: InkResponse( 
           onTap: () => print('Search'),
           child: Icon( 
             Icons.search,
             size: 30,
             color: Colors.black,
           ),
         ),
       )

      ],
      
        
      ),
      body: ListView( 
        children: <Widget>[ 
          Stack(
            children: <Widget>[ 
              Image(
              image: AssetImage('assets/images/samsung_gear_vr.jpg')
              ),
              Positioned(  
                left: 20,
                right: 20,
                bottom: 30,
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    Text( 
                      'POPULAR',
                      style: TextStyle( 
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                     Text( 
                      'The future of',
                      style: TextStyle( 
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text( 
                      'virtual Reality',
                      style: TextStyle( 
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container( 
                      padding: EdgeInsets.all(10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row( 
                        children: <Widget>[ 
                          Image( 
                            image: AssetImage('assets/images/gear_vr.jpg'),
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Column( 
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[ 
                              Text( 

                                'Samsung Gear VR',
                                style: TextStyle( 
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text( 

                                'For Gamers',
                                style: TextStyle( 
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          Expanded( 
                            child: Row( 
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[ 
                                Container( 
                                  width: 60,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(10),
                                    onPressed: () => print('Go to product') , 
                                    color: Colors.orange,
                                    child: Icon( 
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Colors.white ,
                                    ),
                                    ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                  
                )

              )
             ],
             ),
             SizedBox(height: 15,),
             ProductCarousel(  
               title: 'Amazon Prime Deals',
               products: products,
             ),
   ProductCarousel(  
               title: 'Amazon Prime Deals',
               products: books,
             ),

        ],
      ),
    );
  }
}