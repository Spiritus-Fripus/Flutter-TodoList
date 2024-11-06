import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todo List",
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyappBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddSection(),
            Container(height: 1000, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class MyappBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.grey[800], size: 20),
        onPressed: null,
      ),
      title: Text(
        'Todo list',
        style: GoogleFonts.nunito(fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline_rounded,
              color: Colors.grey[800], size: 20),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.place, color: Colors.grey[800], size: 20),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.yellow,
    );
  }
}

class AddSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Input',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.green,
              )
            ],
          ),
          Container(
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
