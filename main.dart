import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyLoginPage()
//     );
//   }
// }

// class MyLoginPage extends StatelessWidget {
//   const MyLoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text("Supermansij"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           height:400,
//           width:400,
//           color: Colors.blueGrey,
//         ),
//       )
//     );
//   }
// }


//Day-2 :

//stless automatic creates class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//to remove debug watermark at top right
      title:"Flutter App",
      theme:ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const LoginScreen(),
    );
  }
}

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

                ElevatedButton(onPressed: () => {}, child: Text("Login")),

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


