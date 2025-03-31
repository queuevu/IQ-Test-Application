import 'package:flutter/material.dart';

import 'pages/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(Colors.white))
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(), // Set MainPage as the home screen
    );
  }
}
  

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 71, 32, 78),
      backgroundColor: Colors.purple[100],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 8),
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //background
        backgroundColor: Colors.purple[100],

        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("IQ TEST", style: TextStyle(fontWeight: FontWeight.bold),),
          elevation: 2,
          centerTitle: true,
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:150,
                width: 300,
                  decoration: BoxDecoration( color: Colors.purple,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Check Your IQ Level",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("with just 10 questions",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      SizedBox(height: 10,),
                      
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>quizTest()));
                        },
                        child: Text("Start Test"/*,style: TextStyle(color: Colors.purple),*/),
                      )

                    ],
                  ),
                  
                ),
            ],
          ),
        ),

        /*floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
      ),*/
      ),
    );
  }
}
