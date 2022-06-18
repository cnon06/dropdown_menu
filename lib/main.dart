import 'package:flutter/material.dart';

import 'package:untitled46/values.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var hebele =  DropdownMenuItem(child: Text("USD"),
    value: "USD",
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Container(
             color: Colors.green,
            // margin: EdgeInsets.all(10),
             width: 150,
             height: 50,
             child: Center(
               child: DropdownButton(

                    value: "USD",
                   items: dd_loop(),


                      /*
                        [
                     DropdownMenuItem(child: Text("USD"),
                       value: "USD",
                     ),
                     DropdownMenuItem(child: Text("Euro"),
                       value: "Euro",
                     ),
                     DropdownMenuItem(child: Text("Pound"),
                       value: "Pound",
                     ),
                     DropdownMenuItem(child: Text("JPY"),
                       value: "JPY",
                     ),
                   ],
                       */



                   onChanged: (value)
               {
                 print('$value');
                    }),
             ),
           ),
          ],
        ),
      ),

    );
  }


  List <DropdownMenuItem<String>> dd_loop()
  {

    List <DropdownMenuItem<String>> lt1 = [];

    for( var gf in currenciesList)
      lt1.add(DropdownMenuItem(child: Text(gf), value: gf));



    return lt1;
  }

}
