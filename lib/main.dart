import 'package:flutter/material.dart';

void main()=> runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.green,
  ),
  home:  new HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("utils App")),
      body:new TabBarView(
        children: <Widget>[
          new new_page("First"),
          new new_page("Second"),
          new new_page("third")
        ],
        controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
          controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.email),
              ),
              new Tab(
                icon: new Icon(Icons.call),
              )
            ],
        ),
      ),
    );
  }
}



class new_page extends StatelessWidget {
  final String title;
  new_page(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}





