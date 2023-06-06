import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:im_stepper/stepper.dart';

//https://www.google.com/url?sa=i&url=https%3A%2F%2Fescortsecurity.com.gh%2F&psig=AOvVaw2DrmOsf7KI4weKMra_QOj5&ust=1685850500150000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKD3pdSYpv8CFQAAAAAdAAAAABAE

class tracking_d extends StatefulWidget {
  const tracking_d({super.key});

  @override
  State<tracking_d> createState() => _tracking_dState();
}

class _tracking_dState extends State<tracking_d> {
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Campus Escort")),
      ),
      body: Container(
        child: Column(children: [
          Text(
            "Progess",
            style: TextStyle(fontSize: 30),
          ),
          Center(
            child: Stepper(
              
              steps: [
                Step(
                  isActive: _currentstep == 0,
                  title: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.shade900,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 250,
                      height: 45,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   Pending',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Center(
                      child: Padding(
                          padding: EdgeInsets.all(8.0), child: Text("time"))),
                ),
                Step(
                  isActive: _currentstep == 1,
                  title: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.shade900,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 250,
                      height: 45,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   Accepted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Padding(
                      padding: EdgeInsets.all(8.0), child: Text("time")),
                ),
                Step(
                  isActive: _currentstep == 2,
                  title: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.shade900,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 250,
                      height: 45,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   Dispatched',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Padding(
                      padding: EdgeInsets.all(8.0), child: Text("time")),
                ),
                Step(
                  isActive: _currentstep == 3,
                  title: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.shade900,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 250,
                      height: 45,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   At Location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Padding(
                      padding: EdgeInsets.all(8.0), child: Text("time")),
                ),
                Step(
                  isActive: _currentstep == 4,
                  title: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.shade900,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 250,
                      height: 45,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   Escorting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  content: Padding(
                      padding: EdgeInsets.all(8.0), child: Text("time")),
                )
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  _currentstep = newIndex;
                });
              },
              currentStep: _currentstep,
              onStepContinue: () {
                if (_currentstep != 4) {
                  setState(() {
                    _currentstep += 1;
                  });
                  
                }
              },
              onStepCancel: () {
                if (_currentstep != 0) {
                 setState(() {
                    _currentstep -= 1;
                 });
                }
              },
            ),
          )
        ]),
      ),
    );
  }
}
