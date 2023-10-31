import 'package:flutter/material.dart';
import 'package:post_api/ApiProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController emailTextEditingController,passwordTextEditingController;
@override
void initState() {
  super.initState();
  emailTextEditingController=TextEditingController();
  passwordTextEditingController=TextEditingController();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
              controller: emailTextEditingController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
           
                )
              ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
              controller: passwordTextEditingController,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
           
                )
              ),
             ),
           ),
           SizedBox(height: 25,),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: ElevatedButton(onPressed: (){
             signUp(emailTextEditingController.text.trim(),passwordTextEditingController.text.trim());
             },
              child: const Center(child: Text('Login'),)),
           )
          ],
        ),
      ),
      
    );
  }
 
}
