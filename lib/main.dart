import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[200],
        leading: Icon(Icons.home),
        title: Center(child: Text("Tugas 9 Flutter"),),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Image.network("https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          Padding(padding: EdgeInsets.all(5)),
          Align(alignment: Alignment.centerLeft, child: Text("Wisata Populer"),),
          ScrollVertical(),
        ],
      ),
    );
  }
}

class ScrollHorizontal extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Expanded(
                child: Image.network("https://images.pexels.com/photos/46253/mt-fuji-sea-of-clouds-sunrise-46253.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
              ),
              Text("Gunung Fuji")
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Column(
            children: [
              Expanded(
                child: Image.network("https://images.pexels.com/photos/726281/pexels-photo-726281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
              ),
              Text("Bali")
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Column(
            children: [
              Expanded(
                child: Image.network("https://images.pexels.com/photos/2116719/pexels-photo-2116719.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
              Text("Jakarta")
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Column(
            children: [
              Expanded(
                child: Image.network("https://images.pexels.com/photos/58603/pexels-photo-58603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
              Text("Kuala Lumpur")
            ],
          ),
          Padding(padding: EdgeInsets.all(3)),
          Icon(Icons.circle,size: 5,),
          Padding(padding: EdgeInsets.all(0.5)),
          Icon(Icons.circle,size: 5,),
          Padding(padding: EdgeInsets.all(0.5)),
          Icon(Icons.circle,size: 5,),
        ],
      ),
    );
  }
}

class ScrollVertical extends StatelessWidget{
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        child: ListView(
          children: [
            ScrollHorizontal(),
            Image.network("https://images.pexels.com/photos/3145153/pexels-photo-3145153.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Bandung"),
                RaisedButton(
                  child: Icon(Icons.check),
                  color: Colors.blueAccent,
                  onPressed: (){}
                )
              ],
            ),
            Image.network("https://images.pexels.com/photos/758742/pexels-photo-758742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Palembang"),
                RaisedButton(
                  child: Icon(Icons.check),
                  color: Colors.blueAccent,
                  onPressed: (){}
                )
              ],
            ),
            Image.network("https://images.pexels.com/photos/654/clouds-cloudy-agriculture-farm.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Garut"),
                RaisedButton(
                  child: Icon(Icons.check),
                  color: Colors.blueAccent,
                  onPressed: (){}
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}