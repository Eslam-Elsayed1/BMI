
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class dashboard extends StatelessWidget {
final TextStyle whiteText =TextStyle(color: Colors.white);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade800,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:_buildbody(),


    );
  }
    Widget _buildbody() {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: 30.0,),
            Row(
              children:<Widget> [
                Expanded(
                    child:Column (
                      children: <Widget>[
                        Container(
                          height: 100,
                          color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text("9,877"),
                                trailing: Icon(FontAwesomeIcons.personWalking),
                              ),


                               Text('Steps'),



                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        Container(
                          height: 100,
                          color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text("40 bpm"),
                                trailing: Icon(FontAwesomeIcons.heart),
                              ),


                              Text('Avg, Heart Rate'),

                            ],
                          ),
                        ),


                        const SizedBox(height: 10.0,),
                        Container(
                            height: 100,
                            color: Colors.deepOrangeAccent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  title: Text("1,515"),
                                  trailing: Icon(FontAwesomeIcons.fire),
                                ),


                                Text('Calories'),



                              ],
                            ),
                          ),

                        const SizedBox(height: 10.0,),
                        Container(
                            height: 100,
                            color: Colors.white12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  title: Text("15 Kms"),
                                  trailing: Icon(FontAwesomeIcons.road),
                                ),


                                Text('Distance'),



                              ],
                            ),
                          ),



                      ],
                    )
                )
              ],
            )

          ],
        ),
      );
    }
  Widget _buildHeader(){
    return Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              value: 0.5,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Colors.grey,
            ),
          ),
          const SizedBox(width: 20.0),
           Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('Overall\n Daily progress',style: whiteText.copyWith(fontSize: 20.0),),
                 const SizedBox(height: 20.0),
                  Text('30% to go',style: TextStyle(color: Colors.white,fontSize: 16.0),)

                ],
              ),
            ),
        ]


    );
  }
    }

