import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  bool liked = false;
  static final List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Image.asset("assets/girl51.png"),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      constraints: BoxConstraints(),
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(Icons.comment_outlined)),
                    IconButton(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(Icons.share)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_border)),
                      ],
                    ),
                  ],

                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/girl5.png'),
                        ),
                    ),
                    Text("Add a Comment")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
Text(''),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 2){
        _showBottomOption(context);
      }
    });

  }
  void _showBottomOption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Image(image: AssetImage("assets/whatsapp.png")),
              title: const Text("Whatapp"),
              onTap: () async {

              },
            ),
            ListTile(
              leading: const Image(image: AssetImage("assets/insta.png")),
              title: const Text("Instagarm"),
              onTap: () async {

              },
            ),
            ListTile(
              leading: const Image(image: AssetImage("assets/yt.png")),
              title: const Text("Youtube"),
              onTap: () async {

              }
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.add_circle_outline_sharp),
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Image(image: AssetImage("assets/skenuapp.png")),
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.deepOrange,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/girl5.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      child: Icon(
                        Icons.add_circle,
                        color: Color(0xffF8CE58),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Color(0xffF8CE58),
                      child: CircleAvatar(
                        radius: 29,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage('assets/girl5.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xffF8CE58),
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/girl5.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xffF8CE58),
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/girl5.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xffF8CE58),
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/girl5.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: '',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: '',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: '',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
