import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:test_selection/tracker.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  List<dynamic> Location = [];
  List<dynamic> desM = [];
  List<dynamic> desty = [];
  String? Locationid;
  String? des_id;
  @override
  void initState() {
    super.initState();
    this.Location.add({"id": 1, "label": "University of West Indies"});
    this.Location.add({"id": 2, "label": "University of Technology "});

    this.desM = [
      {"ID": 1, "Name": "Burger King", "ParentId": 1},
      {"ID": 2, "Name": "KFC", "ParentId": 1},
      {"ID": 3, "Name": "Main Library", "ParentId": 1},
      {"ID": 4, "Name": "Juci Patty", "ParentId": 1},
      {"ID": 1, "Name": "Burger King", "ParentId": 2},
      {"ID": 2, "Name": "Building 1", "ParentId": 2},
      {"ID": 3, "Name": "Building 2", "ParentId": 2},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Dropdown Menu")),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormHelper.dropDownWidget(
              context,
              "Select Location",
              this.Locationid,
              this.Location,
              (onChangedVal) {
                this.Locationid = onChangedVal;
                this.desty = this
                    .desM
                    .where((stateItem) =>
                        stateItem["ParentId"].toString() ==
                        onChangedVal.toString())
                    .toList();
                print(this.desty);
                this.des_id = null;
                setState(() {
                  
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please choose a location';
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              optionValue: "id",
              optionLabel: "label",
            ),
            SizedBox(
              height: 12,
            ),
            FormHelper.dropDownWidget(
              context,
              "Select Location",
              des_id,
              desty,
              (onChangedVal) {
                des_id = onChangedVal;
              },
              (onValidateVal) {
                return null;
              },
              borderColor: '#CDCECD'.toColor(),
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              optionValue: "ID",
              optionLabel: "Name",
            ),

             SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 125,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Add Additional Information here",
                  border: OutlineInputBorder(),
                  
                ),
              ),
            ),
              SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 50, //height of button
              width: 300,
              child: ElevatedButton(
                
                  style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                   side: BorderSide(width: 1, color: Colors.black),
            
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(8)),
                 
                ),
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => tracking_d() ));
              }, child: Text("Make request",style:TextStyle(color: Colors.white,fontSize: 23.0,fontWeight: FontWeight.bold),),
              
              ),
            )

          ],
        ),
      ),
    );
  }
}


extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
