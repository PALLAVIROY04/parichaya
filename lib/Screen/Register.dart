import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image(image: AssetImage("assets/images/couple image3.jpg"),),

                Text("Register",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 25),),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10,),
                      Text("My Email Address is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
                      TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your mail address",
                          )
                      ),
                      SizedBox(height: 20,),
                      Text("My Phone Number is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
                      TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your phone number",
                          )
                      ),
                      SizedBox(height: 20,),
                      Text("Set my Password",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
                      TextField(
                          decoration: InputDecoration(
                            hintText: "Set Your Password",
                          )
                      ),
                      SizedBox(height: 50,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent
                        ),
                        child: TextButton(onPressed: (){}, child:Text("Continue",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white)
                        ),
                        ),
                      ),




                    ],
                  ),
                )



              ],
            ),
          ),
        )

    );
  }
}
