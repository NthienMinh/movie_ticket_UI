import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_ticket_app/screens/homecine_screen.dart';
import 'package:movie_ticket_app/screens/sign_up_screen.dart';
import 'package:movie_ticket_app/widgets/bigtext.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
      child: ListView(
        children: [
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(text: "AMAZING CINEMA", size: 40, color: Colors.white,),
            ],
          ),
          SizedBox(height: 50),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.white),
                cursorColor: Colors.white,
                controller: nameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  ),
                  labelText: 'Email hoặc tên đăng nhập',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  )
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 15, color: Colors.white),
                cursorColor: Colors.white,
                controller: passwordController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  ),
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1.0, color: Colors.white)
                  )
                ),
              ),
            ),
            TextButton(
            onPressed: () {},
            child: const Text(
              'Quên mật khẩu',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
                  child: const Text('Đăng nhập',style: TextStyle(
                color: Colors.white,
              )),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeCineScreen())),
                )
            ),
          SizedBox(height: 25),
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [BigText(text: "Hoặc bạn chưa có tài khoản?" , color:Colors.white,size: 20,)]),
            SizedBox(height: 25),
          Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(side: BorderSide(width: 1.5, color: Colors.white), primary: Colors.black),
                  child: const Text('Đăng ký',style: TextStyle(
                color: Colors.white,
              )),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen())),
                )
            ),
        ]),
      ),
    );
  }
}