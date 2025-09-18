import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://static.vecteezy.com/system/resources/previews/010/963/629/original/house-pixel-icon-free-vector.jpg',
                width: 500,
                height: 400,),
              const SizedBox(height: 7),
              const Text(''
                  'HOME PAGE',
                  style: TextStyle(fontSize: 45)
              ),
              Text('Home.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}