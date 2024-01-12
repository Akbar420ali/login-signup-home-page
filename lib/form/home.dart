import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class home extends StatefulWidget {
  const home ({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List imageList=[
    {"id":1,"image_path": "assets/img1.png"},
    {"id":2,"image_path": "assets/img2.png"},
    {"id":3,"image_path": "assets/img3.png"},
    {"id":4,"image_path": "assets/img5.png"},
    {"id":5,"image_path": "assets/img6.png"},
    {"id":6,"image_path": "assets/img7.png"},
  ];
  final CarouselController carouselController =CarouselController();
  int currentIndex = 0;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white60,


          appBar: AppBar(
            title: Image.asset( "assets/header.png",height: 55,
              fit: BoxFit.cover,),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
           ),

         body: SingleChildScrollView(
        child: Column(
          children: [
          Stack(
            children: [
              CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),

            ],

          ),

          SizedBox(
            height: 30,
          ),
         Container(
           margin: EdgeInsets.all(11),



           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(4),
             boxShadow: [
               BoxShadow(
                 color: Colors.black54,
                 blurRadius: 2,
                 offset: Offset(2, 4), // Shadow position
               ),
             ],
           ),
           child: Column(
             children: [

               Row(

                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Icon(Icons.add_card,),
                   Text("Free Membership for shops",textAlign:TextAlign.left,),
                   Icon(Icons.account_balance_wallet_rounded),
                   Text("POS Facility for shops",textAlign:TextAlign.left),

                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Icon(Icons.add_card),
                   Text("Connectivity in just one click",textAlign:TextAlign.left,),
                   Icon(Icons.account_balance_wallet_outlined),
                   Text("24th/7 Support"),

                 ],

               ),

             ],

           ),
         ),
            SizedBox(
              height: 30,
            ),
            Text("VIEW ALL SHOPS",textAlign: TextAlign.center,style:
            TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30,
            ),
            Text("Dukan 24h Shop",
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.deepOrangeAccent,
                fontSize: 45,
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Container(
                  margin: EdgeInsets.all(17),
                  width: 230,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/img12.png",width: 150,
                        height: 70,
                        fit: BoxFit.cover,
                       ),
                      Container(
                       margin: EdgeInsets.only(top: 130),
                        width: 230,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [

                          ],

                        ),
                        child: Column(
                          children: [
                            Text("gadgeguy.pk",style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,

                            ),),
                            Text("Demo Pharmacy",style:
                            TextStyle(
                              fontSize: 7,


                            ),)
                          ],
                        ),

                      ),

                    
                    ],
                  ),



                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 230,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/img13.png",width: 150,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 160),
                        width: 230,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [

                          ],
                        ),
                        child: Column(
                          children: [
                            Text("KMH electric store",style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,

                            ),),
                            Text("Demo Pharmacy",style:
                            TextStyle(
                              fontSize: 7,


                            ),)
                          ],
                        ),

                      ),


                    ],
                  ),



                ),







              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(4),

              ),
              child: Column(



                children: [


                  Text(textAlign: TextAlign.right,"Subscribe Our Newsletter!",
                    style:
                  TextStyle(



                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,

                  ),),
                  Text("Subscribe to our newsletter for featured",style:
                  TextStyle(
                    fontSize: 10,color: Colors.white,



                  ),), Text("promotions and new products!",style:
                  TextStyle(
                    fontSize: 10,
                    color: Colors.white,


                  ),)





                ],
              ),



            ),

            Text("latest ",textAlign: TextAlign.center,style:
            TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30,
            ),
            Text("Products",
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.deepOrangeAccent,
                fontSize: 45,
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                   ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                    "assets/image1.png",width: 100,
                        height: 70,


                      ),
                      Text("Baby Lotion",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/img9.png",width: 100,
                        height: 70,


                      ),
                      Text("colgate Tothpaste",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/in1.png",width: 100,
                        height: 70,


                      ),
                      Text("Coco ctunch",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),






              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/3.png",width: 100,
                        height: 70,


                      ),
                      Text("muscle milk",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/2.png",width: 100,
                        height: 70,


                      ),
                      Text("Macrone 1kg",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/10.png",width: 100,
                        height: 70,


                      ),
                      Text("Every DAY",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),






              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Feature ",textAlign: TextAlign.center,style:
            TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30,
            ),
            Text("Products",
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.deepOrangeAccent,
                fontSize: 45,
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/image1.png",width: 100,
                        height: 70,


                      ),
                      Text("Baby Lotion",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/img9.png",width: 100,
                        height: 70,


                      ),
                      Text("colgate Tothpaste",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/in1.png",width: 100,
                        height: 70,


                      ),
                      Text("Coco ctunch",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),







              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/3.png",width: 100,
                        height: 70,


                      ),
                      Text("muscle milk",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/2.png",width: 100,
                        height: 70,


                      ),
                      Text("Macrone 1kg",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),
                Container(
                  margin: EdgeInsets.all(23),
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Image.asset(

                        "assets/10.png",width: 100,
                        height: 70,


                      ),
                      Text("Every DAY",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),
                      Text("Demo Pharmacy",style:
                      TextStyle(
                        fontSize: 7,


                      ),)
                    ],
                  ),


                ),






              ],
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(4),

              ),
             child: Row (
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(


                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [


                   Text("Dukan24h allows you to run your business 24/7, helps to reduce",style:
                   TextStyle(
                     fontSize: 12,
                     color: Colors.white,


                   ),),
                   Text("your overhead cost, improves customer satisfaction, and",style:
                   TextStyle(
                     fontSize: 12,
                     color: Colors.white,


                   ),),
                   Text("grows your business.",style:
                   TextStyle(
                     fontSize: 12,
                     color: Colors.white,


                   ),),

                 ],

               ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    Text("Home",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,


                    ),),
                    Text("FAQ",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,


                    ),),
                    Text("Contact",style:
                    TextStyle(
                      fontSize: 12,
                      color: Colors.white,


                    ),),

                  ],

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    Text("Information",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,


                    ),),
                    Text(" info@dukan24h.com",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,


                    ),),
                    Text("0237831231",style:
                    TextStyle(
                      fontSize: 12,
                      color: Colors.white,


                    ),),

                  ],

                )



              ],

             ),



            ),



          ],),
           





         ),

           drawer: Drawer(),


    );

  }
}
