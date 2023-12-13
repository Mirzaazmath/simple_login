import 'package:flutter/material.dart';

import 'home_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:  SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const  Spacer(),
               const  Center(child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),)),
              const  SizedBox(
                  height: 40,
                ),
                Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child:TextFormField(

                    decoration:const  InputDecoration(
                      hintText: "Username",

                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person_2_outlined,color: Colors.grey,)
                    ),
                  ) ,
                ),
              const   SizedBox(height: 20,),
                Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child:TextFormField(

                    decoration:const  InputDecoration(
                        hintText: "Password",

                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock,color: Colors.grey,)
                    ),
                  ) ,
                ),
              const   SizedBox(height: 20,),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.amber,
                        value: true, onChanged: (val){}),
                    Text("Remember me",style: TextStyle(fontSize: 17,color: Colors.grey.shade700),)
                  ],
                ),
                const   SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(25),
                      gradient:const  LinearGradient(
                        colors: [
                           Colors.amber,
                          Colors.pink
                        ]
                      ),

                    ),
                    alignment: Alignment.center,
                    child:const  Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ),
              const   SizedBox(height: 20,),
                Text("Forget Password?",style: TextStyle(fontSize: 17,color: Colors.grey.shade700),),
              const  Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",style: TextStyle(fontSize: 17,color: Colors.grey.shade700),),
                   const  SizedBox(width: 10,),
                   const  Text("Sign up now",style: TextStyle(fontSize: 17,color: Colors.blueAccent),)
                  ],
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
