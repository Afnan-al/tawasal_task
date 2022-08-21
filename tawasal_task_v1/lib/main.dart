

import 'dart:ui';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
//import 'package:form_field_validator/form_field_validator.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SigninScreen());
  }
}

class SigninScreen extends StatefulWidget{
  const SigninScreen({Key? key}): super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController fNameC= TextEditingController();

  TextEditingController lNameC= TextEditingController();

  TextEditingController phoneNumberC= TextEditingController();
  TextEditingController ageC= TextEditingController();

  TextEditingController emailC= TextEditingController();

  int radioValues = 0;
  int whatGender=0;
  final formKey = GlobalKey<FormState>();
  bool isFilled=false;
  //DateTime _dateTime= DateTime.now();
  bool gThan400(BuildContext context)=>    MediaQuery.of(context).size.width>=400;

  @override
  Widget build(BuildContext context) {



    return  Container(
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: const AssetImage("assets/logo.png"),fit: BoxFit.fill ,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop))
          ,
          //color: Colors.white,
         
      ),
      child: BackdropFilter(

    filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Scaffold(
        appBar: AppBar(
          title: isFilled==true?const Text("Display the data",style: TextStyle(color: Colors.white),):null,

          //automaticallyImplyLeading: false,
          backgroundColor: whatGender==0?const Color.fromRGBO(236, 148, 83, 1.0)//Color.fromRGBO(137, 109, 147, 1)
              :whatGender==1?Colors.blue:Colors.pinkAccent,

        ) ,
        backgroundColor: whatGender==0?Colors.transparent:Colors.white,
        body: SafeArea(

          child: isFilled==false?Form(
            key:formKey ,
            
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                          children:[Container(
                              height: 135,
                              width: 135,
                              decoration: BoxDecoration(
                                border:Border.all(width: 1,color: const Color.fromRGBO(236, 148, 83, 1.0)),
                                color: const Color.fromRGBO(236, 148, 83, 1.0),
                                borderRadius: BorderRadius.circular(70),

                              )




                          ),Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 105,
                              width: 105,


                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),

                                  image:  const DecorationImage(
                                    image: NetworkImage("https://gumlet.assettype.com/sabq%2Fimport%2Fuploads%2Fmaterial-file%2F5ed28fa1332853d7538b4570%2F5ed2a42817100.jpg?auto=format%2Ccompress&fit=max&w=750&dpr=1.5",),
                                    fit: BoxFit.fitWidth,
                                  )
                              ),
                            ),
                          )
                          ]
                      ),
                    ),
                  ),


                 Padding(padding: const EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 20),

                    child: TextFormField(
                      controller: fNameC,

                      decoration: InputDecoration(
                          icon: const Icon(Icons.person) ,

                          labelText: "First Name",
                          hintText:"enter your first name??",
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontSize:18),
                          errorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Colors.red,
                                  width: 1)
                          ),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),
                                  width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(150),
                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),width: 1)
                          )
                      ),
                      textAlign: TextAlign.center,
                      validator: (fNameC){
                        if(fNameC!.isEmpty){
                          return 'first name is required';

                        }else if( fNameC.length<=1){
                          return 'Enter a valid name';
                        }else{
                          return null;
                        }},


                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),


                  ),
                  Padding(padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                    child: TextFormField(
                      controller: lNameC,

                      decoration: InputDecoration(
                          icon: const Icon(Icons.person) ,

                          labelText: "Last Name",
                          hintText:"enter your last name??",
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontSize:18),

                          errorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Colors.red,
                                  width: 1)
                          ),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),
                                  width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(150),
                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),width: 1)
                          )
                      ),
                      textAlign: TextAlign.center,
                      validator: (lNameC){
                        if(lNameC!.isEmpty){
                          return 'last name is required';

                        }else if( lNameC.length<=1){
                          return 'Enter a valid name';
                        }else{
                          return null;
                        }

                      },


                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                  ),
                  Padding(padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                    child: TextFormField(

                      controller: phoneNumberC,

                      decoration: InputDecoration(
                          icon: const Icon(Icons.phone) ,

                          labelText: "Phone Number",
                          hintText:"enter your phone number? start with 05..",
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontSize:13),
                          filled: true,
                          fillColor: Colors.white,
                          errorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Colors.red,
                                  width: 1)
                          ),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),
                                  width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(150),
                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),width: 1)
                          )
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      validator: (phoneNumberC){
                        if(phoneNumberC!.isEmpty){
                          return 'phone number is required';

                        }else if(phoneNumberC.length>10 || phoneNumberC.length<10){
                          return 'Enter a valid phone number';
                        }else{
                          return null;
                        }

                      },


                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                  ),

                  Padding(padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                      child: Row(

                        children: [const SizedBox(width: 30,),const Text("Gender: ",
                            style: TextStyle(color:  Color.fromRGBO(236, 148, 83, 1.0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                          Radio(value: 0,activeColor:  const Color.fromRGBO(236, 148, 83, 1.0), groupValue: radioValues,
                              onChanged: (v) {
                                setState(() {
                                  radioValues=v as int;
                                });


                              }),
                          const Text("Man",style:TextStyle(fontSize: 20,)),
                          Radio(value: 1,activeColor:   const Color.fromRGBO(236, 148, 83, 1.0), groupValue: radioValues,
                              onChanged: (v){

                                setState(() {
                                  radioValues=v as int;
                                });

                              }),
                          const Text("Female",style:TextStyle(fontSize: 20,),),
                        ],
                      )

                  ),
                  Padding(padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                    child: TextFormField(
                      controller: ageC,

                      decoration: InputDecoration(
                          icon: const Icon(Icons.calendar_month) ,

                          labelText: "Age",
                          hintText:"enter your age??",
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontSize:18),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),
                                  width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(150),
                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),width: 1)
                          )
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      validator: (ageC){
                        if(ageC!.isEmpty){
                          return 'last name is required';

                        }else if( ageC.length<2){
                          return 'you are too young';
                        }else if(ageC.length>=3){
                          return 'enter the valid number';
                        }
                        else{
                          return null;
                        }

                      },




                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                  ),

                  Padding(padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

                    child: TextFormField(

                      controller: emailC,

                      decoration: InputDecoration(
                          icon: const Icon(Icons.email) ,

                          labelText: "email",
                          hintText:"enter your email??",
                          filled: true,
                          fillColor: Colors.white,
                         //labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),

                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontSize:18 ,),

                          errorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Colors.red,
                                  width: 1)
                          ),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(150),

                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),
                                  width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(150),
                              borderSide: const BorderSide(color: Color.fromRGBO(236, 148, 83, 1.0),width: 1)
                          )
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      validator: (emailC) {
                        if(emailC!.isEmpty){
                          return 'email is required';
                        }else if(!EmailValidator.validate(emailC)){
                          return 'Enter a valid email';

                        }else{
                          return null;
                        }

                      },
                      /*=>emailC !=null &&!EmailValidator.validate(emailC)
                          ?'Enter a valid email':null,*/


                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                  ),


                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 40),
                          primary: const Color.fromRGBO(236, 148, 83, 1.0), //Color.fromRGBO(137, 109, 147, 0.9),
                          shadowColor: const Color.fromRGBO(236, 148, 83, 1.0),//Color.fromRGBO(137, 109, 147, 0.9),
                          elevation:20,
                        ) ,
                        onPressed: (){
                          final isValidForm = formKey.currentState!.validate();
                          if(isValidForm){
                            if(radioValues == 0){
                              setState(() {
                                whatGender=1;

                                isFilled=true;
                                // userInfo=[fNameC.text,lNameC.text,phoneNumberC.text,emailC.text,radioValues.toString()];

                              });

                            }else{
                              setState(() {
                                whatGender=2;

                                isFilled=true;
                                // userInfo=[fNameC.text,lNameC.text,phoneNumberC.text,emailC.text,radioValues.toString()];

                              });

                            }


                          }
                          /* */
                        },
                        child: const Text("Save "),
                      ),
                    ),
                  ),


                ],
              ),

          ) : Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage( whatGender==1?"assets/blue.jpg":"assets/Sleaves.gif"),fit: BoxFit.fill,

              ),
            ),
            child: Center(
                child: Container(
                    width:300,
                    height:250,

                    decoration: BoxDecoration(
                      color: whatGender==1?Colors.blue.withOpacity(0.8 ):Colors.pinkAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 10,right: 8.0,left: 8),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("your name is ${fNameC.text} ${lNameC.text}",
                              style: const TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          const SizedBox(height: 8,),
                          Align(alignment: Alignment.centerLeft,child: Text(" gender: ${radioValues==0?"Man":"Female"} ",style: const TextStyle(color: Colors.white,fontSize: 20))),
                          const SizedBox(height: 8,),
                          Align(alignment:Alignment.centerLeft, child: Text(" Age: ${ageC.text}" ,style: const TextStyle(color: Colors.white,fontSize: 20))),
                          const SizedBox(height: 8,),
                          Align(alignment:Alignment.centerLeft,child: Text(" phone number: ${phoneNumberC.text} ",style: const TextStyle(color: Colors.white,fontSize: 20))),
                          const SizedBox(height: 8,),
                          Align(alignment:Alignment.centerLeft,child: FittedBox(child: Text("email: \n ${emailC.text}",textAlign: TextAlign.left, style: const TextStyle(color: Colors.white,fontSize: 20)))),

                        ],
                      ),
                    )),

            ),
          ),

        ),
      ),
    ),
    );
  }
}