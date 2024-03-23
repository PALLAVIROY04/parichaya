import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common widget/HomeScreen.dart';

class ProfileSetupScreen extends StatefulWidget {
  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2025));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  String dropdownValue = "Gender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi,my name is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                  )
              ),
              SizedBox(height: 20,),
              Text("I am",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
             DropdownMenu(
               width:400,
               enableFilter: true,
               label: Text("Select Your Gender",),
               onSelected: (gender){
                 if (gender != null){
                   setState(() {
                   });
                 }
               },
                 dropdownMenuEntries:[
               DropdownMenuEntry(value: Icons.female, label: "Female"),
               DropdownMenuEntry(value: Icons.male, label: "Male"),
               DropdownMenuEntry(value: Icons.no_accounts, label: "Other"),
             ]
        
             ) ,
              SizedBox(height: 20,),
             Text("My height is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
             DropdownMenu(
               width:400,
               enableFilter: true,
               label: Text("Choose Your Height"),
               onSelected: (gender){
                 if (gender != null){
                   setState(() {
                   });
                 }
               },
                 dropdownMenuEntries:[
               DropdownMenuEntry(value: Icons.height, label: "5"),
               DropdownMenuEntry(value: Icons.height, label: "6"),
               DropdownMenuEntry(value: Icons.height, label: "8"),
             ]
        
             ),
              SizedBox(height: 20,),
              Text("I belong to",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              DropdownMenu(
                  width:400,
                  enableFilter: true,
                  label: Text("Choose Your Caste"),
                  onSelected: (gender){
                    if (gender != null){
                      setState(() {
                      });
                    }
                  },
                  dropdownMenuEntries:[
                    DropdownMenuEntry(value: Icons.height, label: "Yaduvanshi"),
                    DropdownMenuEntry(value: Icons.height, label: "Rajput"),
                    DropdownMenuEntry(value: Icons.height, label: "Jaat"),
                  ]
        
              ),
              SizedBox(height: 20,),
              Text("I born on",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              const SizedBox(height: 20.0,),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1)
                ),
                child: TextButton(
                  onPressed: () => _selectDate(context),
                      child: const Text('Select  your Birthdate',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                ),
              ),
              SizedBox(height: 20,),
              Text("I am living at",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              TextField(
                  decoration: InputDecoration(
                    hintText: "write your short address",
                  )
              ),
              SizedBox(height: 40,),
              Text("Personal Information",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 25)),
              SizedBox(height: 30,),
              Text("I completed/persuing study in",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              DropdownMenu(
                  width:400,
                  enableFilter: true,
                  label: Text("Select Education Field"),
                  onSelected: (gender){
                    if (gender != null){
                      setState(() {
                      });
                    }
                  },
                  dropdownMenuEntries:[
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "B-tech/Be"),
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "BBA"),
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "BCA"),
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "MBA"),
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "MCA"),
                  ]

              ),
              SizedBox(height: 20,),
              Text("I am Working as ",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              DropdownMenu(
                  width:400,
                  enableFilter: true,
                  label: Text("Select your profession"),
                  onSelected: (gender){
                    if (gender != null){
                      setState(() {
                      });
                    }
                  },
                  dropdownMenuEntries:[
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "Employee"),
                    DropdownMenuEntry(value: Icons.cast_for_education, label: "Business"),
                  ]

              ),
              SizedBox(height: 20,),
              Text("My montly income",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your income",
                  )
              ),

        
        
            ],
          ),
        ),
      ),

    );
  }
}
