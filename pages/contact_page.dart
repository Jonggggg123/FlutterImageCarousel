import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://th.bing.com/th/id/R.23d20b394f4cbc3775ef57132d0d29a4?rik=gCSD7JsF2DJM6w&riu=http%3a%2f%2ficon-library.com%2fimages%2fcontact-icon%2fcontact-icon-0.jpg&ehk=p05U%2fJ3Gro8FiGF55dCtJHq%2bhs8iMB9FOu%2bgUxRkxyw%3d&risl=&pid=ImgRaw&r=0',
                width: 500,
                height: 400,),
              const SizedBox(height: 7),
              const Text(''
                  'Contact me and send me some money on Gcash',
                  style: TextStyle(fontSize: 45)
              ),
              Text('Contact no. 09108160235.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}