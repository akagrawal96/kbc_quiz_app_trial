import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/widgets/sidenavbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNavBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1611996575749-79a3a250f948?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1606482558851-23ff4453d66f?auto=format&fit=crop&q=80&w=2073&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              fit: BoxFit.cover,
                            )),
                      )
                    ],
                    options: CarouselOptions(
                        height: 180,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8)),

                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Flexible(
                        flex:1,
                      fit:FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 8,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network("https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                  left: 3,right: 3,top: 3,bottom: 3
                                  ,child: Container(color:Colors.black38)),
                              Padding(
                                padding:EdgeInsets.all(35),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Icon(Icons.lock,size: 30,color: Colors.white,),
                                      Text("Rs.53,000",style: TextStyle(color:Colors.white,
                                          fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                      ),
                                      Text("Flutter Quiz",style: TextStyle(color:Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(width: 10),
                      Flexible(
                          flex:1,
                          fit:FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network("https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                  left: 3,right: 3,top: 3,bottom: 3
                                  ,child: Container(color:Colors.black38)),
                              Padding(
                                padding:EdgeInsets.all(35),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Icon(Icons.lock,size: 30,color: Colors.white,),
                                      Text("Rs.53,000",style: TextStyle(color:Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      ),
                                      Text("Flutter Quiz",style: TextStyle(color:Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Flexible(
                          flex:1,
                          fit:FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network("https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                  left: 3,right: 3,top: 3,bottom: 3
                                  ,child: Container(color:Colors.black38)),
                              Padding(
                                padding:EdgeInsets.all(35),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Icon(Icons.lock,size: 30,color: Colors.white,),
                                      Text("Rs.53,000",style: TextStyle(color:Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      ),
                                      Text("Flutter Quiz",style: TextStyle(color:Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(width: 10),
                      Flexible(
                          flex:1,
                          fit:FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network("https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                  left: 3,right: 3,top: 3,bottom: 3
                                  ,child: Container(color:Colors.black38)),
                              Padding(
                                padding:EdgeInsets.all(35),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Icon(Icons.lock,size: 30,color: Colors.white,),
                                      Text("Rs.53,000",style: TextStyle(color:Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      ),
                                      Text("Flutter Quiz",style: TextStyle(color:Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Stack(
                    children: [
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          child: Image.network("https://images.unsplash.com/photo-1524678714210-9917a6c619c2?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            fit: BoxFit.cover,),
                        ),
                      ),
                      Positioned(
                          left: 3,right: 3,top: 3,bottom: 3
                          ,child: Container(color:Colors.black38)),
                      Padding(
                        padding:EdgeInsets.all(35),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Icon(Icons.lock,size: 30,color: Colors.white,),
                              Text("Rs.53,000",style: TextStyle(color:Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              ),
                              Text("Flutter Quiz",style: TextStyle(color:Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
