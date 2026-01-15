import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_use_counterapp/counter_provider.dart';

class Counterpage2 extends StatelessWidget {
  const Counterpage2({super.key});

  @override
  Widget build(BuildContext context) {
    final counter =Provider.of<CounterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),

     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
         children: [
          
           Text("count value",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange),),
             Text( counter.count.toString(),style: TextStyle(fontSize: 30),),
           
         ],
       ),
     ),
    );
  }
}