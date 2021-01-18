import 'package:epharmalyical/controller/home_controller.dart';
import 'package:epharmalyical/controller/login_controller.dart';
import 'package:epharmalyical/view/Item_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'staticUi/Darwer.dart';

class Photo {
  Photo({
    this.assetName,
    this.assetPackage,
    this.title,
    this.caption,
  });

  final String assetName;
  final String assetPackage;
  final String title;
  final String caption;
}

class HomeView extends StatelessWidget {
  // final LoginController _loginController = Get.find();

  List list = ['12', '11'];

  List<Photo> photos = <Photo>[
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),




    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),



    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),



    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),



    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),



    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),



    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),


    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),


    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),


    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore1',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore2',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore8',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore3',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore4',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore5',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore6',
    ),
    Photo(
      assetName: 'images/drag1.jpg',
      title: 'DragStore7',
    ),





  ];

  final List<String> items = ['Balbhadra', 'Maulik', 'Roshi'];
  static const double height = 366.0;
  String name = 'My Wishlist';

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    //print(_loginController.emailTextController.text);

    final Orientation orientation = MediaQuery.of(context).orientation;
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
        theme.textTheme.headline.copyWith(color: Colors.black54);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    ShapeBorder shapeBorder;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _verticalD(),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Item_Screen(
                                toolbarname: '  Drag 1',
                              )));
                    },
                    child: Text(
                      'Best value',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _verticalD(),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Item_Screen(
                                toolbarname: 'Drag 13',
                              )));
                    },
                    child: Text(
                      'Top sellers',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _verticalD(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Item_Screen(
                                    toolbarname: 'Drag 12',
                                  )));
                        },
                        child: Text(
                          'All',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      _verticalD(),
                      IconButton(
                        icon: keyloch,
                        color: Colors.black26,
                      )
                    ],
                  )
                ]),
            Container(
              height: 150.0,
              margin: EdgeInsets.only(left: 5.0),
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                SafeArea(
                  top: true,
                  bottom: true,
                  child: Container(
                    width: 270.0,

                    child: Card(
                      shape: shapeBorder,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 140.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'images/grthre.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          )

                          /*Positioned(
                          bottom: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text('',
                              style: titleStyle,
                            ),
                          ),
                        ),*/
                        ],
                      ),
                    ),
                    // description and share/explore buttons
                    // share, explore buttons
                  ),
                ),
                SafeArea(
                  top: true,
                  bottom: true,
                  child: Container(
                    width: 270.0,

                    child: Card(
                      shape: shapeBorder,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 140.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'images/grtwo.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          )

                          /*Positioned(
                          bottom: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text('',
                              style: titleStyle,
                            ),
                          ),
                        ),*/
                        ],
                      ),
                    ),
                    // description and share/explore buttons
                    // share, explore buttons
                  ),
                ),
                SafeArea(
                  top: true,
                  bottom: true,
                  child: Container(
                    width: 270.0,

                    child: Card(
                      shape: shapeBorder,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 140.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'images/groceries.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          )

                          /*Positioned(
                          bottom: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text('',
                              style: titleStyle,
                            ),
                          ),
                        ),*/
                        ],
                      ),
                    ),
                    // description and share/explore buttons
                    // share, explore buttons
                  ),
                ),
                SafeArea(
                  top: true,
                  bottom: true,
                  child: Container(
                    width: 270.0,

                    child: Card(
                      shape: shapeBorder,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 140.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'images/back.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          )

                          /*Positioned(
                          bottom: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text('',
                              style: titleStyle,
                            ),
                          ),
                        ),*/
                        ],
                      ),
                    ),
                    // description and share/explore buttons
                    // share, explore buttons
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7.0),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _verticalD(),
                    GestureDetector(
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Item_Screen(
                                  toolbarname: 'Drag 6',
                                )));
                      },
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    _verticalD(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Item_Screen(
                                  toolbarname: 'Drag 1',
                                )));
                      },
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    _verticalD(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Item_Screen(
                                      toolbarname: 'Drag 4',
                                    )));
                          },
                          child: Text(
                            'Whats ',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 800.0,
              child: GridView.builder(
                  itemCount: photos.length,
                  primary: true,
                  shrinkWrap:true,
                 // physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Item_Screen(
                                    toolbarname: photos[index].title,
                                  )));
                        },
                        child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: Card(
                              shape: shapeBorder,
                              elevation: 3.0,
                              child: Container(
                                //  mainAxisSize: MainAxisSize.max,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 152.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: Image.asset(
                                            photos[index].assetName,
                                            fit: BoxFit.cover,
                                          )),
                                          Container(
                                            color: Colors.black38,
                                          ),
                                          Container(
                                            //margin: EdgeInsets.only(left: 10.0),
                                            padding: EdgeInsets.only(
                                                left: 3.0, bottom: 3.0),
                                            alignment: Alignment.bottomLeft,
                                            child: GestureDetector(
                                              onTap: () {
                                                 Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Item_Screen(
                                                              toolbarname:
                                                              'Drag 1',
                                                            )));
                                              },
                                              child: Text(
                                                photos[index].title,
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),

                                          /*Positioned(
                                    child: FittedBox(

                                     fit: BoxFit.fill,
                                      alignment: Alignment.centerLeft,
                                      child: Text(photos[index].title,
                                        style: TextStyle(color: Colors.black87,fontSize: 15.0),
                                      ),

                                  )
                                  )*/
                                        ],
                                      ),
                                    ),

                                    //  Text(photos[index].title.toString()),
                                  ],
                                ),
                              ),
                            )));
                  }),
            )
          ]),
        ),
      ),
    );
  }

  Icon keyloch = Icon(
    Icons.arrow_forward,
    color: Colors.black26,
  );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 5.0, bottom: 0.0),
      );
}
