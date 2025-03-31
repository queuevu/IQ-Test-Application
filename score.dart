import 'package:flutter/material.dart';

class Scorepage extends StatelessWidget{
  final int? score;
  Scorepage({required this.score});
  late final String result;
  late final String IQrange;
  
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 71, 32, 78),
      backgroundColor: Colors.purple[100],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 8),
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
    );

  void setResult(){
    if (score==10){
      IQrange="130-140+";
      result="Gifted Highly Superior";
    }
    else if (score==9){
      IQrange="125-135";
      result="Above Average to Gifted";
    }
    else if (score==8){
      IQrange="115-125";
      result="High Average to Superior";
    }
    else if (score==7){
      IQrange="110-120";
      result="Above Average";
    }
    else if (score==6){
      IQrange="100-110";
      result="Average Intelligence";
    }
    else if (score==5){
      IQrange="90-100";
      result="Low Average";
    }
    else if (score==4){
      IQrange="80-90";
      result="Below Average";
    }
    else if (score!<=3){
      IQrange="Below 80";
      result="Lower Intelligence Level";
    }

  }
  @override
  Widget build(BuildContext context) {
    setResult();
    return Scaffold(
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
                height:300,
                width: 300,
                  decoration: BoxDecoration( color: Colors.purple,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("You Scored ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$score/10",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Estimated IQ Range is",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$IQrange",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Congradulations! Your IQ is ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$result",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                      ),

                      SizedBox(height: 10,),
                      
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: (){
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: Text("Home"/*,style: TextStyle(color: Colors.purple),*/),
                      )
                    ],
                  ),
                  
                ),
            ],
          ),
        ),
    );
  }
}