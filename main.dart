import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'budget.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: budgetApp(),
    );
  }
}

class budgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cyber Bank',style: GoogleFonts.pacifico(
          color: Colors.black
        ),),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.dark_mode,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Icon(Icons.notifications,color: Colors.red,size: 28,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>budget()));
              },
              child: CircleAvatar(
                 backgroundColor: Colors.black,
                backgroundImage: NetworkImage("https://i.pinimg.com/564x/ca/e1/af/cae1afd7f0f92784a8fb32251f4ed8f0.jpg"),
                //child: Image.network("https://i.pinimg.com/564x/ca/e1/af/cae1afd7f0f92784a8fb32251f4ed8f0.jpg",width: 19,height: 28,),
                radius: 20,
              ),
            ),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22,left: 30),
                child: Text('Welcome Back',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 28
                ),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Zaid H.Qassim',style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffeff1fe),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search,color: Color(0xff2f26db),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              //SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff01cd88)
                      ),
                      width: 170,
                      height: 170,
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 30,left: 10),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(FontAwesomeIcons.moneyBillWave,size: 35,color: Color(0xff01cd88),),
                                  ),
                                ),
                              ),
                             Padding(
                               padding: const EdgeInsets.only(bottom: 30,left: 3),
                               child: Container(
                                 //alignment: AlignmentDirectional.center,
                                 width: 50,
                                 height: 50,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.rectangle,
                                     color: Colors.white30
                                 ),

                               ),
                             )

                            ],
                          ),

                          SizedBox(height: 20,),

                          Text('Transaction',style: TextStyle(fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 22,
                          ),),
                          SizedBox(height: 4,),
                          Text('3 Items',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff2f26db)
                      ),
                      width: 170,
                      height: 170,
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 35,left: 10),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(FontAwesomeIcons.creditCard,size: 35,color: Color(0xff2f26db),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30,left: 3),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white30
                                  ),

                                ),
                              )

                            ],
                          ),

                          SizedBox(height: 20,),

                          Text('Credit Cards',style: TextStyle(fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 22,
                          ),),
                          SizedBox(height: 4,),
                          Text('2 Items',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffebac48)
                      ),
                      width: 170,
                      height: 170,
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 35,left: 10),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(FontAwesomeIcons.piggyBank,size: 35,color: Color(0xffebac48),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30,left: 3),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white30
                                  ),

                                ),
                              )

                            ],
                          ),

                          SizedBox(height: 20,),

                          Text('Budget',style: TextStyle(fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 22,
                          ),),
                          SizedBox(height: 4,),
                          Text('7 Items',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffde4e40)
                      ),
                      width: 170,
                      height: 170,
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 35,left: 10),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(FontAwesomeIcons.dollarSign,size: 35,color: Color(0xffde4e40),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30,left: 3),
                                child: Container(
                                  //alignment: AlignmentDirectional.center,
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.white30
                                  ),

                                ),
                              )

                            ],
                          ),

                          SizedBox(height: 20,),

                          Text('Crypto Coins',style: TextStyle(fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 22,
                          ),),
                          SizedBox(height: 4,),
                          Text('5 Items',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Text('Choose a Category',style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff295a93)
                          ),
                          child: Icon(FontAwesomeIcons.businessTime,color: Colors.white,),
                        ),
                        Text('Services',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff295a93)

                        ),),

                      ],
                    ),

                  ),

                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black),
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff2f9e44)
                          ),
                          child: Icon(Icons.payment,color: Colors.white,),
                        ),
                        Text('''Make a
Payment''',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff2f9e44)

                        ),),

                      ],
                    ),

                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}

