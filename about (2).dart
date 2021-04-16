import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return
    new  Scaffold( 
      appBar:  AppBar(
        backgroundColor:  Colors.blue[900], 
        title:  Text("Profil  Saya"), 
        centerTitle:  true,
      ),
      body:  ListView( 
        children:  <Widget>[
          Container(
            color:  Colors.blue[600], 
            child: Stack(
              children: <Widget>[ 
                Padding(
                  padding:  EdgeInsets.only(top:  30), 
                  child:  Align(
                    alignment:  Alignment.topCenter, 
                    child:  Container(
                      height:  200,
                      width:  200,
                      decoration:  BoxDecoration(
                        borderRadius:  BorderRadius.circular(100), 
                        image: DecorationImage(image: AssetImage('assets/images/aris.jpg'),
                          fit:  BoxFit.cover
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color:  Colors.white, 
            child:  Column(
            children: <Widget>[ 
              SizedBox(height: 20), 
              Text('Putu Evi Susita Dewi',
                style: TextStyle(
                  fontWeight:  FontWeight.bold, 
                  fontSize:  22,
                  color:  Colors.black,
                ),
              ),
              SizedBox(height: 5,child: Container( 
                color:  Colors.white,
              ),),
              Row(
                mainAxisAlignment:  MainAxisAlignment.center, 
                children:  <Widget>[
                  Text('Universitas  Pendidikan  Ganesha', 
                    style:  TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize:  20,
                      color: Colors.blue
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding:  EdgeInsets.only(top:  30,  right:  50,  left:  50), 
          child:  Column(
            children: <Widget>[ 
              Padding(
                padding:  const  EdgeInsets.all(0), 
                child:  Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween, 
                  children:  <Widget>[
                    Container( 
                      height:  100,
                      width:  100,
                      decoration: BoxDecoration(
                        border:  Border.all(color:  Colors.red),
                        //color: Colors.green,
                        borderRadius:  BorderRadius.only(topRight: Radius.circular(20),  topLeft:  Radius.circular(20)),
                      ),

                      child:  Padding(
                        padding:  const  EdgeInsets.all(12.0), 
                        child:  Column(
                          children:  <Widget>[ 
                            Icon(Icons.school,
                              color:  Colors.blue, 
                              size: 58),
                            Text('Undiksha', 
                              style: TextStyle
                                (color: Colors.black, fontWeight:  FontWeight.bold
                              ), )
                          ],
                        ),
                      ),
                    ),

                    Container( 
                      height:  100,
                      width:  100,
                      decoration: BoxDecoration(
                        border:  Border.all(color:  Colors.black),
                        //color: Colors.red,
                        borderRadius:  BorderRadius.only(topRight: Radius.circular(20),  topLeft:  Radius.circular(20)),
                      ), 
                      child: Padding(
                        padding:  const  EdgeInsets.all(12.0), 
                        child:  Column(
                          children:  <Widget>[
                            Icon(Icons.home,  
                            color:  Colors.black,  
                            size: 58,),
                            Text('Selingsing', style: TextStyle 
                              (color:  Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  const  EdgeInsets.only(top:  40), 
                child:  Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween, 
                  children:  <Widget>[
                    Container(
                      height:  100,
                      width:  100,
                      decoration: BoxDecoration(
                        border:  Border.all(color:  Colors.black),
                        //color: Colors.red ,
                        borderRadius:  BorderRadius.only(topRight: Radius.circular(20),  topLeft:  Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:  const  EdgeInsets.all(12.0), 
                        child:  Column(
                          children:  <Widget>[ 
                            Icon(Icons.fastfood_outlined, 
                            color:  Colors.brown, 
                            size: 58,),
                            Text('Spicy',  style:  TextStyle 
                              (color:  Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height:  100,
                    width:  100,
                    decoration: BoxDecoration(
                      border:  Border.all(color:  Colors.brown), 
                      borderRadius:  BorderRadius.only(topRight: Radius.circular(20),  topLeft:  Radius.circular(20)),
                    ),
                    child: Padding(
                      padding:  const  EdgeInsets.all(12.0), 
                      child:  Column(
                        children:  <Widget>[
                          Icon(Icons.favorite,
                          color:  Colors.green[600],
                          size: 58,),
                          Text('sanmori',style:  TextStyle 
                          (color:  Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                        ),
                      ),
                    )
                  ],  
                ),
              )
            ],
          ),
        )
      ] ,
    ),
  );
}
}