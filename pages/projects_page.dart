import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects Page'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://tse1.mm.bing.net/th/id/OIP.YPNwUJd_eFdKZZaNqa-qNwHaD_?rs=1&pid=ImgDetMain&o=7&rm=3',
                width: 500,
                height: 400,),
              const SizedBox(height: 7),
              const Text(''
                  'Projects',
                  style: TextStyle(fontSize: 45)
              ),
              Text('I can create html file',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}