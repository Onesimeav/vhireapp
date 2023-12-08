import 'package:flutter/material.dart';

class SignupStep1 extends StatefulWidget {
  const SignupStep1({super.key});

  @override
  State<SignupStep1> createState() => _SignupStep1State();
}

class _SignupStep1State extends State<SignupStep1> {
  final  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? _sexe;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading:   Row(

          children: <Widget>[
            Expanded(child:  IconButton(onPressed:  (){
              // This is useless //Navigator.push(context, MaterialPageRoute(builder: (context) => SignupStep0()));
            }, icon: const Icon(Icons.arrow_back,color: Colors.black,size: 30,),alignment: Alignment.topLeft,))

          ],
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Padding(padding: const EdgeInsets.only(left: 30.0),
                child: Image.asset("assets/images/vhire.png",height: 200,),
              ),
          const SizedBox(height: 15,),
          //Welcome section
          const Text("inscription",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
                color: Color(0xFF5371E9)
            ),
          ),
          const SizedBox(height:10,),
          const Text('Entrer vos informations',
            style: TextStyle(
                fontSize: 18),
          ),
              const SizedBox(height: 15,),
          Form(
              key: formKey,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Numéro de carte d'identité",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                      validator: (String? value){
                      return (value == null || value == "") ?
                      "Ce champ est obligatoire": null;
                    },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Numéro de permis de conduire",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),validator: (String? value){
                      return (value == null || value == "") ?
                      "Ce champ est obligatoire": null;
                    },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),

            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child:   DropdownButtonFormField(style :const TextStyle(color: Colors.white
              ),decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Quel est votre sexe',
              ),
                value: _sexe,
                onChanged: (String? v)async{
                  setState(() {
                    _sexe = v;
                  });
                },
                items: <String>['M','F'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style:TextStyle(color: Colors.black),),
                  );
                }).toList(),
                validator: (str) => str == null ? "Ce champ est obligatoire" : null,
              ),
            ),
          ),
        ),


      ],
          )
          ),
              const SizedBox(height: 30,),
          // Email text field
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
    showDialog(
       context: context,
       builder: (BuildContext context) {
       return AlertDialog(
       title: const Text('Notification'),
        content: const Text('Inscrit'),
       actions: <Widget>[
       TextButton(
       onPressed: () => Navigator.pop(context, 'Cancel'),
       child: const Text('Cancel'),
         ),
       ],
       );
      },
     );
    }


                }
                ,
                child: const Text("Valider"),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(const Color(0xFF5371E9)),
                  fixedSize: MaterialStateProperty.all(const Size.fromWidth(200)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // Adjust the radius as needed
                    ),
                  ),
                ),
              ),

              //
          ]
        )
      ),
      ),

    );
  }
}
