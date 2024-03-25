import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions:[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.login_sharp))
        ],
      ),


      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 0,
            ),
            DrawerHeader(
                child: Image.network('https://marketplace.canva.com/EAFO74bDca8/3/0/1600w/canva-brown-white-modern-fashion-banner-OgcIyosRRcE.jpg',
                fit: BoxFit.fill,
                )
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('Home',
              textAlign: TextAlign.left,
              )),
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('Category',
              textAlign: TextAlign.left,
              )),
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('Cart',
              textAlign: TextAlign.left,
              )),
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('Profile',
              textAlign: TextAlign.left,
              )),
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('Contract Us',
              textAlign: TextAlign.left,
              )),
            ),
            ListTile(
              title: TextButton(onPressed: () {}, child: const Text('About US',
              textAlign: TextAlign.left,
              )),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }

}
