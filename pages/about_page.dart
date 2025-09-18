import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),

        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network( 'https://tse1.mm.bing.net/th/id/OIP.RytjCgZkvGvumYaEdlGtcQHaEK?rs=1&pid=ImgDetMain&o=7&rm=3',
                width: 600,
                height: 500,),
              const SizedBox(height: 1),
              const Text(''
                  'About Myself',
                  style: TextStyle(fontSize: 45)
              ),
              Text('My Name is Sajo Maurice H. Acelador, I am 19 years old currently living in caloocan city' 'My Hobbies are playing online Games and eating',

                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}