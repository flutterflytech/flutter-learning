import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

 class ListViewScreen extends StatefulWidget {
   @override
   _ListViewScreenState createState() => _ListViewScreenState();
 }

 class _ListViewScreenState extends State<ListViewScreen> {
   @override
   Widget build(BuildContext context) {
     var i = 1;
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: SafeArea(
           child: Container(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                     child: ListView(
                       // scrollDirection: Axis.horizontal, // to make horizontal recyclerview
                       // dragStartBehavior: DragStartBehavior.down,
                       children: [
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Red ${i++}',style: TextStyle(color: Colors.red.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Yellow ${i++}',style: TextStyle(color: Colors.yellow.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Green ${i++}',style: TextStyle(color: Colors.green.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Blue ${i++}',style: TextStyle(color: Colors.blue.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Orange ${i++}',style: TextStyle(color: Colors.orange.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar GreenAccent ${i++}',style: TextStyle(color: Colors.greenAccent.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Italic font RedAccent ${i++}',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.redAccent.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Italic font PinkAccent ${i++}',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.pinkAccent.withOpacity(0.6)),),),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text('Alok Kumar Italic font RedAccent ${i++}',style: TextStyle(backgroundColor:Colors.pink,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.blueAccent.withOpacity(0.6)),),),

                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.'),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Text('Rt. Aligned Subtitle of ListTile',style: TextStyle(color: Colors.white),),
                           trailing: Icon(Icons.zoom_out_rounded,color: Colors.white,size: 40,),
                           tileColor: Colors.amberAccent,
                         ),
                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Text('Rt. Aligned Subtitle of ListTile',style: TextStyle(color: Colors.white),textDirection: TextDirection.rtl,),
                           trailing: Icon(Icons.access_alarm_outlined,color: Colors.white,size: 40,),
                           tileColor: Colors.redAccent,
                         ),

                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Text('Rt. Aligned Subtitle of ListTile',style: TextStyle(color: Colors.white),textDirection: TextDirection.rtl,),
                           trailing: Icon(Icons.handyman,color: Colors.white,size: 40,),
                           tileColor: Colors.orange,
                         ),

                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Text('Rt. Aligned Subtitle of ListTile',style: TextStyle(color: Colors.white),textDirection: TextDirection.rtl,),
                           trailing: Icon(Icons.height,color: Colors.white,size: 40,),
                           tileColor: Colors.lightGreenAccent,
                         ),

                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Text('Rt. Aligned Subtitle of ListTile',style: TextStyle(color: Colors.white),textDirection: TextDirection.rtl,),
                           trailing: Icon(Icons.ac_unit,color: Colors.white,size: 40,),
                           tileColor: Colors.deepOrangeAccent,
                         ),


                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Subheading Left 1'),
                              Text('Subheading Left 2'),
                              Text('Subheading Left 3'),
                              Text('Subheading Left 4'),

                            ],
                           ),trailing: Icon(Icons.wysiwyg_rounded,color: Colors.white,size: 40,),
                           tileColor: Colors.red,
                         ),

                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Text('Subheading centered 1',textDirection: TextDirection.rtl),
                               Text('Subheading centered 2',textDirection: TextDirection.rtl),
                               Text('Subheading centered 3',textDirection: TextDirection.rtl),
                             ],
                           ),trailing: Icon(Icons.access_time_outlined,color: Colors.white,size: 40,),
                           tileColor: Colors.blueAccent,
                         ),

                         SizedBox(height: 2),
                         ListTile(
                           title: Text('Sun - This is the Title of ListTile.', style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                           leading: FlutterLogo(size: 45,),
                           subtitle:Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Text('Subheading Right 1'),
                               Text('Subheading Right 2',style: TextStyle(fontWeight: FontWeight.bold),),
                               Text('Subheading Right 3'),
                               Text('Subheading Right 4'),
                             ],
                           ),trailing: Icon(Icons.zoom_in_sharp,color: Colors.white,size: 40,),
                           tileColor: Colors.lightGreen,
                         ),
                       ],
                     ),
                   ),
               ),
             ),
         ),
         ),
     );
   }
 }

