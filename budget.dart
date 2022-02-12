import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2f26d9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2f26d9),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>budgetApp()));
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications,color: Colors.white,size: 28,),
          ),

        ],

      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff2f26d9)
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 16),
                  child: Text('Your Balance',style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 8),
                  child: Text(''' \$5,000.20''',style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffc4f2ff)
                  ),
                  width: 170,
                  height: 220,
                  child: Column(


                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 45),
                            child: Container(
                              //alignment: AlignmentDirectional.center,
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(


                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(FontAwesomeIcons.coins,size: 65,color: Color(0xff221ca2),),
                              ),
                            ),
                          ),


                        ],
                      ),

                      SizedBox(height: 35,),

                      Text('\$5,400',style: TextStyle(fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 32,
                      ),),
                      SizedBox(height: 4,),
                      Text('Expense',style: TextStyle(
                        color: Color(0xff528899),
                        fontSize: 16,
                      ),),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffffe6d7)
                  ),
                  width: 170,
                  height: 220,
                  child: Column(


                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 42),
                            child: Container(
                              //alignment: AlignmentDirectional.center,
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(


                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(FontAwesomeIcons.funnelDollar,size: 65,color: Color(0xfff2a815),),
                              ),
                            ),
                          ),


                        ],
                      ),

                      SizedBox(height: 35,),

                      Text('\$12,000',style: TextStyle(fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 32,
                      ),),
                      SizedBox(height: 4,),
                      Text('Spend to Goals',style: TextStyle(
                        color: Colors.brown,
                        fontSize: 16,
                      ),),
                    ],
                  ),
                ),

              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 340),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(45.0),
                  topRight: const Radius.circular(45.0),
                ),

              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Transactions',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff223A5E),
                          fontSize: 28
                        ),),
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff0eff1fe),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text('See All',style: TextStyle(
                            color: Color(0xff223A5E),
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff01cd88)
                              ),
                              child: Icon(FontAwesomeIcons.car,size: 30,color: Colors.white,),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Car Purchase',style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w600,

                                ),),
                                Text('Auto Loan',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey

                                ),),

                              ],
                            )

                          ],
                        ),
                        SizedBox(width: 18,),
                        Text('\$250',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 22
                        ),),



                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff3641b7)
                                ),
                                child: Icon(FontAwesomeIcons.home,size: 30,color: Colors.white,),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('House Purchase',style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w600,

                                  ),),
                                  Text('Airbnb Home',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey

                                  ),),

                                ],
                              )

                            ],
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('\$2230',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 22
                        ),),



                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 34),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffff5949)
                                ),
                                child: Icon(FontAwesomeIcons.gift,size: 30,color: Colors.white,),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Transport',style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w600,

                                  ),),
                                  Text('Uber',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey

                                  ),),

                                ],
                              )

                            ],
                          ),
                        ),
                        SizedBox(width: 18,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('\$49',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 22
                          ),),
                        ),



                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff18bcbd)
                              ),
                              child: Icon(FontAwesomeIcons.shoppingBag,size: 30,color: Colors.white,),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shopping        ',style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w600,

                                ),),
                                Text('Amazon',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey

                                ),),

                              ],
                            )

                          ],
                        ),
                        SizedBox(width: 18,),
                        Text('\$420',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 22
                        ),),



                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
