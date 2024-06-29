import 'package:flutter/material.dart';
import 'package:age_calculator/screens/results.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  DateTime currenttime = DateTime.now();
  DateTime datetime = DateTime.now();




  void _showDatePicker(){
    showDatePicker(
    initialDate: DateTime.now(),
    context: context, 
    firstDate: DateTime(1900), 
    lastDate: DateTime(2025) 
    ).then((value){
      setState((){
        datetime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Calculate your age')),
      ),

      body: 
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Year : ${datetime.year.toString()}',style: const TextStyle(color: Colors.white, fontSize: 20),),
                Text('Month : ${datetime.month.toString()}',style: const TextStyle(color: Colors.white, fontSize: 20),),
                Text('Day : ${datetime.day.toString()}',style: const TextStyle(color: Colors.white, fontSize: 20),),


                MaterialButton(onPressed: _showDatePicker,
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Choose Date', style: TextStyle(color: Colors.white, fontSize: 25),),
                ), ),


                MaterialButton(onPressed: (){
                  Duration difference = currenttime.difference(datetime);



                  Navigator.push(context, MaterialPageRoute(builder: (_)=>  Results(difference: difference)));
                },
                color: Colors.redAccent,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Perform calculations', style: TextStyle(color: Colors.white, fontSize: 25),),
                ), ),



              ],
            ) ,),
        
      


    );
  }
}