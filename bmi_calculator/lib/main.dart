import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int heightValue=175;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark(), //overall theme of the app
      home: Scaffold(
//----------------------------------APPBAR--------------------------------------------------------------------
        appBar: AppBar(
          centerTitle: true,
          elevation: 4,
          backgroundColor: Colors.teal, // AppBar background color
          shadowColor: Colors.black, // AppBar shadow color
          title: const Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.black, // AppBar title text color
              fontSize: 24,
              
              fontWeight: FontWeight.bold,
          ),
          ),

        ),

//----------------------------------BODY--------------------------------------------------------------------

        body:  Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //------------Gender selection cards----------------------------------------------------------------
                    Expanded(
                      child:Container(
                        margin: EdgeInsets.all(10), // Margin around the card
                        decoration: BoxDecoration(
                          color: Colors.blueGrey, // Card background color
                          borderRadius: BorderRadius.circular(10), // Card border radius
                        ),
//------------------Icon and Text for Male Gender-------------------------------------------------------
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.blue, // Icon color
                            ),
                            SizedBox(height: 10), // Spacing between icon and text
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue, // Text color
                              ),
                            ),
                            
                          ],      
                        ),
                      ),
                      
                    ),
                    //--------------------------------------------------------------------

                    Expanded(
                      child:Container(
                        margin: EdgeInsets.all(10), // Margin around the card
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                //------------------Icon and Text for Female Gender-------------------------------------------------------
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.pink, // Icon color
                            ),
                            SizedBox(height: 10), // Spacing between icon and text
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink, // Text color
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ),

                  ],
                ),
              ),
//-------------------------------Height Selection Cards-----------------------------------------------------

              Expanded( 
                child:Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2,
                        size: 30,
                        color:Colors.yellow,
                      ),

                      SizedBox(height:10),

                      Text(
                        
                        '$heightValue cm',
                      style:TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,

                      ) ,
                      ),
                      Slider(
                        value: heightValue.toDouble(),
                        min: 100,
                        max: 230,
                        onChanged: (double newValue) {
                           setState(() {
                            heightValue = newValue.toInt();
                        });
                         },
                        ),

                      
                    ],
                  ),

                ),


              ),
//----------------------------------Weight and Age selection cards------------------------------------------------
              Expanded(//Weight and Age selection cards
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  //------------Weight selection card----------------------------------------------------------------
                  Expanded(
                    child:Container(
                
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.monitor_weight,
                      size: 50,
                      color:Colors.yellow,
                    ),
                    SizedBox(height: 10,),

                    Text('Weight',
                    style: TextStyle(
                      color:Colors.yellow,
                      fontSize: 20,

                    ),)

                  ],
                ),
              ),

              ),

              //------------Age selection card----------------------------------------------------------------
                  Expanded(
                    child:Container(
                
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon( //Icon
                      Icons.person,
                      size:50,
                      color:Colors.yellow,
                    ),
                    SizedBox(height: 10,),
                    Text( //Text
                      'Age',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,

                      ),

                    ),
                  ],
                ),
              ),

              ),
                ],
              ),
              ),


            ],
          ),
        ),
      ),

    );
  }
  }