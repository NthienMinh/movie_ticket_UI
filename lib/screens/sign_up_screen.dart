import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_ticket_app/screens/sign_in_screen.dart';
import 'package:movie_ticket_app/widgets/bigtext.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  bool? accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: BigText(
                text: "Đăng ký",
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: emailController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: passController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Mật khẩu',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: confirmPassController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Nhập lại mật khẩu',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      cursorColor: Colors.white,
                      controller: firstNameController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white)),
                          labelText: 'Họ',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white))),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: TextField(
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      cursorColor: Colors.white,
                      controller: lastNameController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white)),
                          labelText: 'Tên',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.white))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: phoneController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Điện thoại di động',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: birthdayController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Ngày tháng năm sinh',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: sexController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Giới tính',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                  cursorColor: Colors.white,
                  controller: locationController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      labelText: 'Địa chỉ',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 150,
              color: Color(0xff292929),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black26,
                        value: accept,
                        onChanged: (value) {
                          setState(() {
                            accept = value;
                          });
                        },
                      ),
                      BigText(text: "Tôi đã đọc, hiểu và đồng ý với các", size: 16, color: Colors.white,),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'điều kiện',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                height: 50,
                width: 370,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
                  child: const Text('Đăng ký',style: TextStyle(
                color: Colors.white,
              )),
                  onPressed: () {_showCupertinoDialog(context);}
                )
            ),
                ],
              ),
            )
          ],
        ));
  }
  _dismissDialog(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => SignInScreen()));
}

void _showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: BigText(
            text: 'Đăng ký thành công!',
            color: Colors.black,
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  _dismissDialog(context);
                  
                },
                child: BigText(
                  text: 'Đóng',
                  color: Colors.black,
                )),
          ],
        );
      });
}
}
