part of pages;

class LoginOtpPage extends StatefulWidget {
  const LoginOtpPage({Key? key}) : super(key: key);

  @override
  State<LoginOtpPage> createState() => _LoginOtpPageState();
}

class _LoginOtpPageState extends State<LoginOtpPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteLogin2);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xfffe8550),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            // const LoginRegistrationHeader(
            //   centerText: true,
            //   title: "Verification Code",
            //   subTitle:
            //       "We have sent the code verification\nto your mobile number",
            // ),
            const Text(
              "Verification Code",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We have sent the code verification\nto your mobile number",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                const Center(
                  child: Text(
                    '+8801987654321',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: mainColor,
                    )),
              ],
            ),
            Row(
              children: [
                _buildOTPValue(focusNode1, onChanged: (val) {
                  if (val.isNotEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode2, onChanged: (val) {
                  if (val.isNotEmpty) focusNode3.requestFocus();
                  if (val.isEmpty) focusNode1.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode3, onChanged: (val) {
                  if (val.isNotEmpty) focusNode4.requestFocus();
                  if (val.isEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode4, onChanged: (val) {
                  if (val.isEmpty) focusNode3.requestFocus();
                }),
              ],
            ),
            SizedBox(height: kVerticalPadding),
            LoginRegisterFooter(
              question: '',
              actionText: 'Send another code',
              action: () {},
            ),
            SizedBox(height: kVerticalPadding * 3),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const ProfileSetupPage(),
                  ),
                );
              },
              child: const Text("Next"),
            ),
            SizedBox(height: kVerticalPadding),
          ],
        ),
      ),
    );
  }

  Expanded _buildOTPValue(
    FocusNode focusNode, {
    ValueChanged<String>? onChanged,
  }) {
    return Expanded(
      child: TextFormField(
        // cursorHeight: 100,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        //obscureText: true,
        //obscuringCharacter: "*",
        style: const TextStyle(
          fontSize: 32,
          color: primaryFontColor,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
