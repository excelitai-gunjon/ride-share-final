part of pages;

class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //backgroundColor: Colors.white,
      //   shadowColor: null,
      //   title: const Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Text(
      //       "Profile",
      //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 20.0),
      //       child: IconButton(
      //           onPressed: () {},
      //           icon: const Icon(FontAwesomeIcons.shoppingCart)),
      //     )
      //   ],
      // ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     const Icon(FontAwesomeIcons.arrowCircleLeft),
              //     GestureDetector(),
              //   ],
              // ),

              const LoginRegistrationHeader(
                centerText: true,
                title: "Setup Profile",
                subTitle: "Great! you are almost done",
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  "assets/p1.jpg",
                ),
              ),
              // Row(
              //   //crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Icon(
              //       Icons.edit,
              //       color: mainColor,
              //       size: 15,
              //     ),
              //     Text(
              //       "Edit Profile",
              //       style: TextStyle(color: mainColor, fontSize: 15),
              //     ),
              //   ],
              // ),
              // const Text(
              //   "Hi there Emilla!",
              //   style: TextStyle(color: primaryFontColor, fontSize: 20),
              // ),
              // const Text(
              //   "Sign Out",
              //   style: TextStyle(color: placeholderColor, fontSize: 10),
              // ),

              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your full name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22),
                    // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Email address',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'Address',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'password',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'confirm password',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              //TextButton(onPressed: (){}, child: Text("Edit Profile",style: TextStyle(color: mainColor,fontSize: 20),))
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ProfileSetupPage(),
                      ),
                    );
                  },
                  child: const Text("Done"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
