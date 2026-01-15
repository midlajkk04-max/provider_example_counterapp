import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_use_counterapp/counter_provider.dart';
import 'package:provider_use_counterapp/counterpage2.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider =Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("counter page"),
        centerTitle: true,
       backgroundColor: const Color.fromARGB(255, 132, 105, 240),
      ),
      backgroundColor: const Color.fromARGB(255, 125, 105, 240),

      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(height: 10,),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
               ),
              onPressed: (){
                counterProvider.decrement();
              }, child: Text("-",style: TextStyle(fontSize: 35),)),
            SizedBox(width: 9,),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
               ),
              onPressed: (){
                counterProvider.increment();
              }, child: Text("+",style: TextStyle(fontSize: 35),)),
              
             
          ],
            ),
            SizedBox(height: 30,),
             Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Counterpage2()));
                    }, child: Text("go to next screen"))
                ],
              )
          ],
          
         
        ),
      ),
    );
  }
}