import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 400;
  double width = double.infinity;
  BoxShape shape = BoxShape.rectangle;

  changed() {
    setState(() {
      height = 500;
      width = 500;
      shape = BoxShape.circle;
    });
  }

  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  String img = 'https://scontent.flad1-1.fna.fbcdn.net/v/t1.0-9/37944771_2101164120137241_7529889551850930176_o.jpg?_nc_cat=101&_nc_eui2=AeEkyy7J30b81r0v0h1ClDsO3mUN2uQ9CKuyQ1RDQijSNH03nMVidya2mzeOidjgN_25pVHMG5Di5Kgg35xhWtT_e4b_u0En3hFUfYTmN1aiMw&_nc_ht=scontent.flad1-1.fna&oh=d4a06a0aebbfda7ab20d5fe5e3e7304e&oe=5D75B93D';

  String menu = 'https://www.freeiconspng.com/uploads/menu-icon-5.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              color: Colors.purple,
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 700,
            forceElevated: true,
            pinned: true,
            backgroundColor: Colors.purple,
            leading: GestureDetector(
              child: Image.network(
                menu, 
                height: 50,
                width: 50,
              ),
              onTap: () {
                _scaffoldState.currentState.openDrawer();
              },
            ),
            actions: <Widget>[
              Row(
               
                children: <Widget>[
                Text('Pagina Incial  |  ', style: TextStyle(color: Colors.white, fontSize: 22),),
                Text('Galeria  |  ', style: TextStyle(color: Colors.white, fontSize: 22),),
                Text('Blog  |  ', style: TextStyle(color: Colors.white, fontSize: 22),),
                Text('Contacto  |  ', style: TextStyle(color: Colors.white, fontSize: 22),),
                    Row(
                      children: <Widget>[
                         Container(
                           margin: const EdgeInsets.only(top: 5),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        img
                                      ),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                SizedBox(width: 10,),
                        Text('Dorivaldo Dos Santos   ', style: TextStyle(color: Colors.white, fontSize: 22),),
                      ],
                    )
                ],
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      'https://amadeusafricablog.com/wp-content/uploads/2017/01/luanda-angola.jpg',
                      fit: BoxFit.cover,
                      height: 700,
                    ),
                    Container(
                      color: Colors.black.withOpacity(.4),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: <Widget>[
                            Text(
                              'Investidores externos interessados em Angola preveem melhoria económica'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        img
                                      ),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Text('By: ', style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 24),),
                                Text('Dorivaldo Dos Santos', style: TextStyle(color: Colors.white, fontSize: 22),)
                              ],
                            ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Container(
                                   width: 150,
                                   height: 45,
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   child: Center(child: Text('Explorar'.toUpperCase(),style: TextStyle(color: Colors.white, fontSize: 18))),
                                 ),
                                  SizedBox(width: 10,),
                                 Container(
                                   width: 150,
                                   height: 45,
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                     border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   child: Center(child: Text('ENTRAR',style: TextStyle(color: Colors.white, fontSize: 18))),
                                 ),
                               ],
                             )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            )
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width,
            ),
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          mycard(),
                          
                          mycard(),
                       
                          mycard(),
                          
                          mycard(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          mycard(),
                          
                          mycard(),
                       
                          mycard(),
                          
                          mycard(),
                        ],
                      ),
                    ],
                  );
                },
                childCount: 2
            ),
          )
        
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 3.0,
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Fou65zXjTXWe7cs2H40KHyCxZORd3jqh08fbrzCpsC-mtQgJ',
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
        onPressed: changed
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget mycard() {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: 458,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4
          )
        ]
      ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
            child: Image.network(
              img,
              height: 280,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Text('Nome : Dorivaldo dos Santos', style: TextStyle(color: Colors.black87, fontSize: 18),),
                  Divider(),
                  Text('Facebook : Dorivaldo dos Santos', style: TextStyle(color: Colors.black87, fontSize: 18),),
                  Divider(),
                  Text('Github : dvs200', style: TextStyle(color: Colors.black87, fontSize: 18),),
                  Divider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text('VER MAIS', style: TextStyle(color: Colors.white, fontSize: 19),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
