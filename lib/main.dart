import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
var arrNames=['Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb'];
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:  Text('List tiles'),


      ),
       // body: const CircleAvatar(
       //   backgroundImage:AssetImage('assets/images/boy.png'),
       // )

body:
      Container(
        height:800,
        color: Colors.deepOrangeAccent,

        child: ListView.builder(
          itemCount:arrNames.length ,
          scrollDirection: Axis.vertical,
          itemExtent: 100,
          itemBuilder: (context,index){


            return ListTile(
              leading: Text('$index'),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: IconButton(onPressed: () {showDialog(context: context, builder: (context) => const AlertDialog(
                title: Text("number was activated"),
                backgroundColor: Colors.red,
              ) ,);}, icon:const Icon(Icons.add) ,),
            );


          },),
      ),

    );
  }
}
