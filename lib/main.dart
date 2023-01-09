import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData.light().copyWith(
          scrollbarTheme: ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(Colors.white),
      )),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text('Instagram',
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black)),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.add_circle_outline,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(width: 20),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(width: 20),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.message_outlined,
                        size: 30, color: Colors.black),
                  )),
            ],
          ),
          // ListView with 100 list items
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/shinzo.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text('story-1'),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/shinzo.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text('story-2'),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/shinzo.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text('story-3'),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/shinzo.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text('story-4'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 30.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/shinzo.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('username',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      SizedBox(width: 160),
                      Icon(Icons.more_horiz_outlined, size: 35)
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 290.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/flutter2.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                    child: Row(children: [
                  Icon(Icons.favorite_border, size: 35),
                  SizedBox(width: 15),
                  Icon(Icons.apple_outlined, size: 35),
                  SizedBox(width: 15),
                  Icon(Icons.business_outlined, size: 35),
                  SizedBox(width: 155),
                  Icon(Icons.bookmark_border, size: 35),
                ])),
                SizedBox(height: 5),
                Container(
                  child: Row(children: [
                    Container(
                      height: 30.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/shinzo.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text('Liked by jayribagchi and 5 others',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ]),
                ),
                Container(
                  child: Row(children: [
                    Text('February 5',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    SizedBox(width: 5),
                    Text('Perfectly Instagram-able!',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ]),
                ),
                //Container(child: Text('Isn't this ')),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                    size: 35,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    {}
                  },
                  icon: const Icon(
                    Icons.search_outlined,
                    size: 35,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.people_outline,
                    size: 35,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    {}
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 35,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    {}
                  },
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
