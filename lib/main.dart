import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title:  Text("ListView"),),
        body:  ListBodyLayout(),
      ),

    );
  }

}
class ListBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mylistView(context);
  }
}
Widget _mylistView(BuildContext context)
{
//  final stateofindia=['Andhra Pradesh', 'Arunachal Pradesh', 'Assam, Bihar','Chhattisgarh'
//  ,'Goa', 'Gujarat','Haryana', 'Himachal Pradesh', 'Jammu and Kashmir',	'Jharkhand', 'Karnataka',
//  'Kerala,' 'Madhya Pradesh', 'Maharashtra',  'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Odisha',
//  'Punjab', 'Rajasthan',' Sikkim', 'Tamil Nadu', 'Telangana', 'Tripura',' Uttar Pradesh', 'Uttarakhand ', 'West Bengal'
//  ];

  return ListView.builder(
    scrollDirection: Axis.horizontal,

//      itemCount: stateofindia.length,
//  itemCount:  1000,
      itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                color: Colors.red,
                child: Text('$index '),
        );

      },



  );
}





