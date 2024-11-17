// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
//    late ScrollController _scrollController;
//   late TabController _tabController;
//
//   @override
//   void initState(){
//     super.initState();
//     TabController = TabController(length: 3, vsync: this);
//     _scrollController = ScrollController();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.grey,
//         child: SafeArea(
//           child: Scaffold(
//             body: Column(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(left: 20, right: 20),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.menu,
//                         size: 24,
//                         color: Colors.black,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.search,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Icon(
//                             Icons.notification_add,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 20),
//                       child: Text(
//                         'Popular Books',
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     )
//                   ],
//                 ),
//
//                 SizedBox(height: 20,),
//
//                 Container(
//                   height: 180,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: 0,
//                           left: -20,
//                             right: 0,
//                           child: Container(
//                         height: 180,
//                         child: PageView.builder(
//                             controller: PageController(viewportFraction: 0.8),
//                             itemCount: 5,
//                             itemBuilder: (_, i) {
//                               return Container(
//                                 height: 180,
//                                 width: MediaQuery.of(context).size.width,
//                                 margin: EdgeInsets.only(right: 10),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     image: DecorationImage(
//                                         image: NetworkImage(
//                                             'https://www.pexels.com/photo/woman-surrounded-by-sunflowers-1263986/'),
//                                            fit: BoxFit.fill,
//                                     )
//
//                                 ),
//
//                               );
//                             }),
//                       ))
//                     ],
//                   ),
//                 ),
//
//
//           Expanded(
//             child: NestedScrollView(
//               controller: _scrollController, // Controller for scrolling
//               headerSliverBuilder: (BuildContext context, bool isScroll) {
//                 return [
//                   SliverAppBar(
//                     pinned: true,
//                     bottom: PreferredSize
//                       preferredSize:  Size.fromHeight(50),
//                       child: Container(
//                         margin: EdgeInsets.all(0),
//                         child: TabBar(
//                           indicatorPadding: const EdgeInsets.all(0),
//                           indicatorSize: TabBarIndicatorSize.label,
//                           labelPadding: const EdgeInsets.all(0),
//                           controller: _tabController,
//                           isScrollable: true,
//                           indicator: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                color: Colors.grey.withOpacity(0.2),
//                                 blurRadius: 7,
//                                 offset:Offset(0, 0),
//                               )
//                               ]
//                           ),
//                          tabs:[
//                            Container(
//                            width: 120,
//                            height: 50,
//                            child: Text('New', style: TextStyle(color: Colors.white)
//
//                             ),
//                             decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                             BoxShadow(
//                             color: Colors.grey.withOpacity(0.2),
//                             blurRadius: 7,
//                             offset:Offset(0, 0),
//                             )
//                             ]
//
//                             )
//
//                            )
//                          ]
//                         ),
//                       ),
//                     ),
//                 )
//                 ];
//               },
//             )),
//               ],
//             ),
//           ),
//         ));
//   }
// }


import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Initialize TabController
    _scrollController = ScrollController(); // Initialize ScrollController
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Top Row with Menu and Icons
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 24,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Icon(Icons.notification_add),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Title Row
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Popular Books',
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // PageView Section
              Container(
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: -20,
                      right: 0,
                      child: Container(
                        height: 180,
                        child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          itemCount: 5,
                          itemBuilder: (_, i) {
                            return Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://via.placeholder.com/150',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Expanded NestedScrollView with TabBar
              Expanded(
                child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (BuildContext context, bool isScroll) {
                    return [
                      SliverAppBar(
                        pinned: true,
                        backgroundColor: Colors.white,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(50),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            child: TabBar(
                              indicatorPadding: const EdgeInsets.all(0),
                              indicatorSize: TabBarIndicatorSize.label,
                              labelPadding: const EdgeInsets.only(right: 10),
                              controller: _tabController,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 7,
                                    offset: const Offset(0, 0),
                                  )
                                ],
                              ),
                              tabs: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 50,
                                  child: const Text(
                                    'New',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.pink,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 50,
                                  child: const Text(
                                    'Trending',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                      color: Colors.purple,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 50,
                                  child: const Text(
                                    'Recommended',
                                    style: TextStyle(color: Colors.white),
                                  ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    color: Colors.cyan,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ];
                  },

                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(

                          itemBuilder: (_, i){

                         return Container(
                           margin: EdgeInsets.only(left: 20, right:20, top: 10, bottom: 10),
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                 BoxShadow(
                                   blurRadius: 2,
                                   offset: Offset(0, 0),
                                   color: Colors.grey.withOpacity(0.2),
                                 )
                               ]
                             ),

                             child: Container(
                               padding: EdgeInsets.all(8),
                               child: Row(
                                 children: [
                                   Container(
                                     width: 90,
                                     height: 120,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: NetworkImage(
                                           'https://www.pexels.com/photo/person-performing-coffee-art-302899/',
                                         ),
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                   ),

                                   SizedBox(height: 10,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.star, size: 24, color: Colors.yellow),
                                                    SizedBox(width: 5,),
                                                    Text('4.5'),

                                                  ],
                                                ),
                                                Text('title',
                                                  style: TextStyle(fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                                  ),
                                                ),

                                       Text('title',
                                         style: TextStyle(fontSize: 20),
                                       ),

                                       Container(
                                         width: 60,
                                         height: 20,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(3),
                                           color: Colors.blue
                                         ),
                                        child:  Text('Love',
                                           style: TextStyle(fontSize: 20),
                                         ),

                                       )

                                     ],
                                   )


                                 ],
                               ),
                             ),








                           ),
                         );

                      }),
                      Material(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            
                          ),
                          title: Text('Content'),
                        ),
                      ),

                      Material(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,

                          ),
                          title: Text('Content'),
                        ),
                      ),

                      Material(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,

                          ),
                          title: Text('Content'),
                        ),
                      )

                    ],
                  )
                ),
              ),
            ],


          ),
        ),
      ),
    );
  }
}
