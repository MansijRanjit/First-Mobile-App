import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/dash_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
            child:Center(
                child:Container(
                    padding:const EdgeInsets.all(20.0),
                    child:Column(
                      children: [
                        Text("Welcome to SUPERMANSIJ WORLD",style:TextStyle(fontSize:22)),
                        //pubsec.yl package
                        //add gap
                        const Gap(30),
                        Text("Login ", style:TextStyle(fontSize: 18),),
                        const Gap(50),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Username"
                          ),
                        ),

                        const Gap(30),

                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Password"
                          ),
                        ),

                        const Gap(30),

                        ElevatedButton(onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const DashScreen(),)
                          )


                        }, child: Text("Login")),

                        const Gap(30),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Forgot Password?"),
                            ElevatedButton(onPressed: ()
                            {

                            }, child: Text("Click Here"))
                          ],
                        )
                      ],
                    )
                )
            )
        )
    );
  }
}
