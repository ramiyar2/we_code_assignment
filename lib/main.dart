import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _HomePage(),
    );
  }
}
class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  String imageUrl= "http://placeimg.com/640/480/nature";
  List images =[
  "http://placeimg.com/640/480/animals",
  "http://placeimg.com/640/480/tech",
  "http://placeimg.com/640/480/arch"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          Column(
            children: [
              Image.network(imageUrl),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.35,
                child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context ,int index){
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.01,),
                        child: InkWell(
                          child: Image.network(images[index],width: MediaQuery.of(context).size.width * 0.8,),
                          onTap: () => setState((){imageUrl = images[index];}) ,
                        ),
                      );
            }),
              ),
            ],
        ),
      ),
    );
  }
}

