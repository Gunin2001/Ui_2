import 'package:flutter/material.dart';
import 'package:ui_2/Widgets.dart';
class MainUI extends StatefulWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  Widget _buildNext()
  {
    String dropdownValue = "Gear type" ;
    String dropdownValue1 = "Fuel type" ;
    String dropdownValue2 = "Vessel Size" ;
    String dropdownValue3 = "State" ;
    String dropdownValue4 = "Port" ;
    return ListView(
      padding: EdgeInsets.all(20.0),
     children: [ DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      iconEnabledColor: Colors.amber,
      elevation: 16,
      style: const TextStyle(color: Colors.grey),
      underline: Container(
        height: 2,
        color: Colors.grey,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          print(dropdownValue);
        });
      },
      items: <String>['Gear type', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
       inCard("Vessel Name*"),
       inCard("Vessel Call sign"),
       inCard("Vessel Registration No."),
       DropdownButton<String>(
         value: dropdownValue1,
         icon: const Icon(Icons.arrow_drop_down),
         iconSize: 24,
         iconEnabledColor: Colors.amber,
         elevation: 16,
         style: const TextStyle(color: Colors.grey),
         underline: Container(
           height: 2,
           color: Colors.grey,
         ),
         onChanged: (String? newValue) {
           setState(() {
             dropdownValue1 = newValue!;
           });
         },
         items: <String>['Fuel type', 'Two', 'Free', 'Four']
             .map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       ),
       DropdownButton<String>(
         value: dropdownValue2,
         icon: const Icon(Icons.arrow_drop_down),
         iconSize: 24,
         iconEnabledColor: Colors.amber,
         elevation: 16,
         style: const TextStyle(color: Colors.grey),
         underline: Container(
           height: 2,
           color: Colors.grey,
         ),
         onChanged: (String? newValue) {
           setState(() {
             dropdownValue2 = newValue!;
           });
         },
         items: <String>['Vessel Size', 'Two', 'Free', 'Four']
             .map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       ),
       DropdownButton<String>(
         value: dropdownValue3,
         icon: const Icon(Icons.arrow_drop_down),
         iconSize: 24,
         iconEnabledColor: Colors.amber,
         elevation: 16,
         style: const TextStyle(color: Colors.grey),
         underline: Container(
           height: 2,
           color: Colors.grey,
         ),
         onChanged: (String? newValue) {
           setState(() {
             dropdownValue3 = newValue!;
           });
         },
         items: <String>['State', 'Two', 'Free', 'Four']
             .map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       ),
       DropdownButton<String>(
         value: dropdownValue4,
         icon: const Icon(Icons.arrow_drop_down),
         iconSize: 24,
         iconEnabledColor: Colors.amber,
         elevation: 16,
         style: const TextStyle(color: Colors.grey),
         underline: Container(
           height: 2,
           color: Colors.grey,
         ),
         onChanged: (String? newValue) {
           setState(() {
             dropdownValue4 = newValue!;
           });
         },
         items: <String>['Port', 'Two', 'Free', 'Four']
             .map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: onPressed(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
              child: Text("Cancel",style: TextStyle(color: Colors.amber),)),
          TextButton(onPressed: onPressed(),
               style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
              child: Text("Submit",style: TextStyle(color: Colors.amber),))
        ],
      )
     ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Add boat",style: TextStyle(color: Colors.amber),),
        backgroundColor: Colors.black,
      ),
      body: _buildNext(),
    );
  }

  onPressed() {}
}
