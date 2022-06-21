import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const   Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                            'images/logo.png'
                        ),
                      ),
                      // SvgPicture.asset(
                      //     'images/logo.svg'
                      // ),
                    const  SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Maintenance' , style: TextStyle(fontSize: 24 , fontFamily: 'Rubik Medium' , color: Color(0xffF9703B))),
                          Text('Box' , style: TextStyle(fontSize: 24 , fontFamily: 'Rubik Medium' , color: Color(0xff323F4B)),),
                        ],
                      )


                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text('Log in' ,style: TextStyle(fontSize: 24 , fontFamily: 'Rubik Medium' , color: Color(0xff323F4B)),)),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit ' , textAlign: TextAlign.center
                    ,style: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980))),
                  const  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980).withOpacity(0.5)),
                      decoration:  InputDecoration(
                        hintText: 'Email' ,
                        hintStyle: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980).withOpacity(0.5)),
                        fillColor: const Color(0xffF8F9FA),
                        prefixIcon: const Icon(Icons.alternate_email_outlined ,color: Color(0xff323F4B),) ,
                        focusedBorder: const  OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF9703B), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedErrorBorder: const  OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF9703B), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder:  const  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ) ,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980).withOpacity(0.5)),
                      decoration:  InputDecoration(
                        hintText: 'Password' ,
                        hintStyle: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980).withOpacity(0.5)),
                        fillColor: const Color(0xffF8F9FA),
                        prefixIcon: const Icon(Icons.lock_open ,color: Color(0xff323F4B),) ,
                        suffixIcon: const Icon(Icons.visibility_off_outlined ,color: Color(0xff323F4B),),
                        focusedBorder: const  OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF9703B), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedErrorBorder: const  OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF9703B), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder:  const  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ) ,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, 'emailVerification');
                            },
                            child: const Text('Forgot Password?', style: TextStyle(fontSize: 16 ,decoration: TextDecoration.underline, fontFamily: 'Rubik Regular' , color: Color(0xff323F4B))))),
                  ),
                  SizedBox(
                    height : 100,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF9703B),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: MaterialButton(
                        height: 58,
                        onPressed: () {
                        },
                        child: Text('Logins' , style: const TextStyle(color: Colors.white, fontFamily: 'Rubik Medium' ),),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, ),
                    child: InkWell(
                      onTap: (){
                        print('click');
                       Navigator.pushNamed(context, 'signup');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t have an account? ' , textAlign: TextAlign.center ,style: TextStyle(fontSize: 16 , fontFamily: 'Rubik Regular' , color: Color(0xff4C5980))),
                          Text('Sign Up ' , textAlign: TextAlign.center ,style: TextStyle(fontSize: 16 , fontFamily: 'Rubik Medium' , color: Color(0xffF9703B)))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height : 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
