import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnsweredScreen extends StatefulWidget {
  const AnsweredScreen({super.key});

  @override
  State<AnsweredScreen> createState() => _AnsweredScreenState();
}

class _AnsweredScreenState extends State<AnsweredScreen> {
  @override
  Widget build(BuildContext context) {
    final mQ= MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQ.height*0.05,),
            Padding(
              padding: const EdgeInsets.only(left: 0.03),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Image.asset(backIcon1),
                    Spacer(),
                    Image.asset(appIcon),
                  ],
                ),
              ),
            ),
            SizedBox(height: mQ.height*0.1,),
            FittedBox(

              child: const  Text('Your\n        Question\n                was Answered',
                style: TextStyle(height: 2, fontSize: 28, fontWeight: FontWeight.w600,color: Color(0xff00B3DF)),),
            ),
            SizedBox(height: mQ.height*0.02,),
            const Padding(
              padding:  EdgeInsets.only(left: 15.0),
              child: Text('Lorem ipsum dolor sit amet consectetur, '
                  'adipisicing elit.Corporis veritatis numquam,optio tenetur commodi sint,'
                  'enim porro perferendis reiciendis ducimus esse obcaecati. Reprehenderit quidem aut,'
                  'earum repellendus magnameveniet Lorem ipsum dolor sit amet consectetur, adipisicing elit.'
                  'Corporis veritatis numquam,optio tenetur ',style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w600,color: Colors.grey),),
            ),
            SizedBox(height: mQ.height*0.02,),
            const Center(
              child: Row(
                children: [
                  Text(textAlign: TextAlign.center, 'You Have a Good\nDay!!! 😊',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Color(0xff00B3DF)),),
                ],
              ),
            ),

          ],),
      ),);
  }
}
