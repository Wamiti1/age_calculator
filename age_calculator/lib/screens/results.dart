import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key,
  required this.difference
  });
  final Duration difference;
  
  
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child :Text('Your age')),
      ),
      body:  Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(' You are ${((difference.inDays).round()).toString()} days old'),
            ),
              Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text('You are ${((difference.inDays/30.4375).round()).toString()} months old'),
             ),
               Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('You are ${((difference.inDays/365).round()).toString()} years old'),
              )
          ],) ,),
      
      
      
      
      );
  }
}