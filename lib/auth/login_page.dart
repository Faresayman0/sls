import 'package:flutter/material.dart';
import 'package:salsabil/auth/register_page.dart';
import 'package:salsabil/map/first_screen_map.dart';
import 'package:salsabil/pages/home/home_page.dart';
import 'package:salsabil/widget/const_image.dart';
import 'package:salsabil/widget/custom_text_feild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isFieldsFilled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateVisibilityState);
    _passwordController.addListener(_updateVisibilityState);
  }

  void _updateVisibilityState() {
    final bool fieldsFilled =
        _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    if (fieldsFilled != _isFieldsFilled) {
      setState(() => _isFieldsFilled = fieldsFilled);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ConstImage(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: 
              CustomTextField(
                controller: _emailController,
                label: 'Email',
                hint: 'Enter your email address',
                icon: Icons.email_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomTextField(
                controller: _passwordController,
                label: 'Password',
                hint: 'Enter your Password',
                icon: Icons.lock_outline_sharp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: TextButton(
                onPressed: () {
                  // TODO: Add forgot password logic
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color(0xff1F4C6B),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: _isFieldsFilled ? 1.0 : 0.0,
              child:
               Center(
                child: 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 18,
                    ),
                    backgroundColor: const Color(0xff252B5C),
                  ),
                  onPressed: _isFieldsFilled
                      ? () {
                         Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const FirstScreenMap();
                  }));
                        }
                      : null,
                  child: const Text(
                    "LogIn",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Image.asset("images/auth/devicon_google.png"),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Image.asset("images/auth/gg_facebook.png"),
                ),
              ],
            ),
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                 Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  }));
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          color: Color(0xffB66404),
                        ),
                      ),
                      TextSpan(
                        text: ' Register?',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color(0xff0C558A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
