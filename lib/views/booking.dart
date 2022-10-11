part of 'pages.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String routeName = '/booking';

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlFullname = TextEditingController();
  final ctrlPhonenumber = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlFullname.dispose();
    ctrlPhonenumber.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name", prefixIcon: Icon(Icons.person)),
                  controller: ctrlFullname,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email", prefixIcon: Icon(Icons.email)),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone_android)),
                  controller: ctrlPhonenumber,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "City", prefixIcon: Icon(Icons.location_city)),
                  controller: ctrlCity,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      if (_loginKey.currentState!.validate()) {
                        Fluttertoast.showToast(
                            msg: 'Booking Confirmation:' +
                                "Full Name: " +
                                ctrlFullname.text.toString() +
                                ', Email: ' +
                                ctrlEmail.text.toString() +
                                ', Phone Number: ' +
                                ctrlPhonenumber.text.toString() +
                                ', City; ' +
                                ctrlCity.text.toString(),
                            toastLength: Toast.LENGTH_SHORT,
                            fontSize: 14,
                            backgroundColor: Colors.greenAccent,
                            textColor: Colors.white);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Booking Failed " + " Please fill all fields!",
                            toastLength: Toast.LENGTH_SHORT,
                            fontSize: 14,
                            backgroundColor: Colors.redAccent,
                            textColor: Colors.white);
                      }
                    },
                    child: Text("Book Now"))
              ],
            )),
      ),
    );
  }
}
