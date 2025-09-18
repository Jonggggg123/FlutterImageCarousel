import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://th.bing.com/th/id/R.8a7ce6d99ead7584f61d523eb88d91d0?rik=7zek4sEkVUfxig&riu=http%3a%2f%2fwww.thenerddaily.com%2fwp-content%2fuploads%2f2018%2f08%2fReasons-To-Watch-Anime.jpg&ehk=rMvnw7TdBoV%2bubGoKBZ%2bgBF4jfE8%2fLPLPnqUqWo7sUE%3d&risl=&pid=ImgRaw&r=0',
                width: 500,
                height: 400,),
              const SizedBox(height: 7),
              const Text(''
                  'Goku Family',
                  style: TextStyle(fontSize: 45)
              ),
              Text('My Gallery',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30)
              )

            ],
          )
      ),
    );
  }
}