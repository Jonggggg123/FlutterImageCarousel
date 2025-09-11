import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<Map<String, String>> imgList = [

    {
      'url' : 'https://tse2.mm.bing.net/th/id/OIP.kxPc890Pl-WTikIot05WBQHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
      'description' : 'MISSION : GRC is creating a culture for successful, socially responsible, morally upright skilled workers, and highly competent professionals through values-based quality education. ',

    },
    {
      'url' : 'https://tse3.mm.bing.net/th/id/OIP.StsxouBKsDeYtNU70FysRAHaEM?rs=1&pid=ImgDetMain&o=7&rm=3',
      'description' : 'VISION: A global community of excellent individuals with values.',

    },
    {
      'url' : 'https://tse4.mm.bing.net/th/id/OIP.-YRSLMznMNoB2G2LGt0B9wHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
      'description' : 'College of Computer Studies',

    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('',
          style: TextStyle(
            fontSize: 28,
            color: Colors.red,
          ),),
          leading: Builder(builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.network(
                  'https://media.licdn.com/dms/image/C560BAQFFiR2IYmFM8A/company-logo_200_200/0/1607082150098?e=2147483647&v=beta&t=qt02ltiO6tRAyCWqWB0eQcK1sC186hOtRqNLw4rrPE0',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTracer) => Text(
                    'missing logo',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('HOME'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('SETTINGS'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.details),
                title: const Text('ABOUT'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],

          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(16.5, 16.5, 16.5, 8.10),
              child: Text(
                'Welcome to GRC',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: imgList.map((item) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            item['url']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTracer) => Icon(Icons.error),
                          ),
                        ),

                        Container(
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            item['description']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ),


                      ],


                    ),
                  );
                }).toList(),
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Text('Touching Hearts, Renewing Minds, Transforming Lives',
                style: TextStyle(fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                ),

              ),
            ),
            Padding(padding:  EdgeInsets.symmetric(horizontal: 40.0),
              child: Center(
                child: Image.network(
                  'https://tse3.mm.bing.net/th/id/OIP.ps8OprfGi86ldRdo_pVUdwAAAA?r=0&pid=ImgDet&w=135&h=116&c=7&o=7&rm=3',
                  fit: BoxFit.contain,

                ),
              ),
            ),
      ]
        ),
      ),
    );

  }
}