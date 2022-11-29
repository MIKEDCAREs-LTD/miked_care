import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miked_care/password_reset.dart';

void main() {
  runApp(const MyApp());
}
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xFF16E4E4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff14cdcd),//10%
      100: const Color(0xff12b6b6),//20%
      200: const Color(0xff0fa0a0),//30%
      300: const Color(0xff0d8989),//40%
      400: const Color(0xff0b7272),//50%
      500: const Color(0xff095b5b),//60%
      600: const Color(0xff074444),//70%
      700: const Color(0xff042e2e),//80%
      800: const Color(0xff021717),//90%
      900: const Color(0xff000000),//100%
    },
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New_password',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Palette.kToDark,
      ),
      home: const NewPasswordSetting(),
    );
  }
}
class NewPasswordSetting extends StatefulWidget {
  const NewPasswordSetting({Key? key}) : super(key: key);

  @override
  State<NewPasswordSetting> createState() => _NewPasswordSettingState();
}

class _NewPasswordSettingState extends State<NewPasswordSetting> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: ListView(
        children:  [
          //BACK BUTTON
          
          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 15)),
          SizedBox(
            child: SvgPicture.asset('assets/images/Mikedcare.svg',
              height: deviceHeight*0.09,
              width: deviceWidth*0.09,
              alignment: Alignment.bottomCenter,),
          ),

          const Padding(padding: EdgeInsets.fromLTRB(0,42, 0, 15)),
          const Center(child: Text
            ('Set your new password',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Text
            ('Your new password must be different from you previous password',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300),
          )
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0,8, 0, 15)),
          const AllTextFields(),
          Container(
            margin: const EdgeInsets.fromLTRB(35,42 ,35,0),
            height: deviceHeight*0.07,
          child: ElevatedButton(onPressed: (){
            ResetSuccessfully(context);
          },style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                  )
              )
          ),
            child: const Text('RESET PASSWORD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),),),),
        ],
      ),
    );
  }

  void ResetSuccessfully(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> PasswordReset()));
  }
}
// this class is a combination of all TextField elements
class AllTextFields extends StatefulWidget {
  const AllTextFields({Key? key}) : super(key: key);

  @override
  State<AllTextFields> createState() => _AllTextFieldsState();
}

class _AllTextFieldsState extends State<AllTextFields> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(35, 20, 35, 20),// defining Left, Right, Top Bottom padding
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,// align it to the end of the screen
            children: [
              // PASSWORD INPUT
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordObscured,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: "Min. of 6 characters",
                    hintStyle: const TextStyle(color: MyColors.grey,fontSize: 14,),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: MyColors.shade100,fontSize: 16,fontWeight: FontWeight.bold),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        passwordObscured = !passwordObscured;
                      });
                    },
                      icon: Icon(
                        passwordObscured
                            ? Icons.visibility_off
                            : Icons.visibility,),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Palette.kToDark)
                    )
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom:30),),
              // Confirmation of Password
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordObscured,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: "Confirm your password",
                    hintStyle: const TextStyle(color: MyColors.grey,fontSize: 14,),
                    hintText: "Min. of 6 characters",
                    labelStyle: const TextStyle(color: MyColors.shade100,fontSize: 16,fontWeight: FontWeight.bold),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        passwordObscured = !passwordObscured;
                      });
                    },
                      icon: Icon(
                        passwordObscured
                            ? Icons.visibility_off
                            : Icons.visibility,),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Palette.kToDark)
                    )
                ),
              ),


            ]
        )
    );
  }
}

class MyColors {
  static const grey=Color(0xff8c9696);
  static const shade0=Color(0xff14cdcd);//10%
  static const shade20= Color(0xff12b6b6);//20%
  static const shade30= Color(0xff0fa0a0);//30%
  static const shade40=Color(0xff0d8989);//40%
  static const shade50=Color(0xff0b7272);//50%
  static const shade60=Color(0xff095b5b);//60%
  static const shade70=Color(0xff074444);//70%
  static const shade80=Color(0xff042e2e);//80%
  static const shade90=Color(0xff021717);//90%
  static const shade100=Color(0xff000000);//100%

}

