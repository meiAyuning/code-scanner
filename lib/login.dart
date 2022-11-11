import 'package:codescanner/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //KITA DETECT MENGGUNAKAN MEDIAQUERY, JIKA SCREEN LANDSCAPE
      //MAKAN AKAN DITAMBAHKAN WIDGET SCROLLING AGAR BISA DISCROLL
      //SELAIN ITU TANPA WIDGET SCROLLING.
      //ContentArea() ADALAH NAMA SEBUAH CLASS BARU
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(child: ContentArea())
          : ContentArea(),
    );
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
      ],
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //JADI KITA MENGGUNAKAN FLEXIBLE UNTUK MEMISAHKANNYA MENJADI DUA BAGIAN,
    //PERTAMA ADALAH HEADER DAN FORM, KEDUA ADALAH TOMBOL-TOMBOL NANTINYA
    //KITA KERJAKAN BAGIAN PERTAMA DENGAN FLEX 2 BERARTI PORSINYA LEBIH BESAR
    return Flexible(
      flex: 2,
      //KEMUDIAN MENGGUNAKAN STACK AGAR MUDAH MENGATUR LETAKNNYA SESUAI KEINGINAN
      //KARENA KITA INGIN GAMBAR HEADER DAN FORM LOGIN SALING MEMBELAH
      child: Stack(
        children: <Widget>[
          //SET CONTAINER SEBAGAI BACKGROUND
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          //CONTAINER KEDUA BERISI IMAGE SEPERTI CASE SEBELUMNYA PENJELASANNYA
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('images/header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //POSITIONED UNTUK MENGATUR SUDUTNYA
          Positioned(
            //JARAK DARI ATAS KITA AMBIL DARI HEIGHT DIBAGI 3.6
            top: MediaQuery.of(context).size.height / 3.6,
            //CONTAINER YANG WIDTHNYA SELEBAR MUNGKIN
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                //CARD KITA SET MARGINNYA 20 DARI CONTAINER
                margin: const EdgeInsets.all(20.0),
                elevation: 8, //KETEBALANNYA
                child: Padding(
                  //KEMUDIAN COLUMN KITA SET LAGI PADDINGNYA DARI CARD
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //BAGIAN PERTAMA ADALAH TEKS FORM LOGIN
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Login Form",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //TEKS FIELD UNTUK MENGINPUT EMAIL
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 92, 92, 92),
                          ),
                          //KETIKA INPUTAN TERSEBUT DIKLIK MAKA AKAN MEMBUAT UNDERLINE
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: "Email: ", //SET LABELNYA
                          //DAN SET STYLE DARI LABEL, CARA KERJANYA SAMA DENGNA TEXT STYLE KETIKA DISEMATKAN PADA TEXT() WIDGET
                          hintText: 'Enter your email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //TEXT FIELD UNTUK PASSWORD, ADAPUN PENJELASANNYA SAMA DENGAN CODE DIATAS
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 92, 92, 92),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: "Password: ",
                          hintText: 'Enter your password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //TERAKHIR ADALAH TEKS UNTUK FORGOT PASSWORD
                      Padding(
                        //PADDINGNYA KITA SET UNTUK JARAK DARI ATAS BAWAH DAN KANAN
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        //KITA GUNAKAN ALIGN UNTUK MENGATUR POSISINYA
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        //PADDINGNYA KITA SET UNTUK JARAK DARI ATAS BAWAH DAN KANAN
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        //KITA GUNAKAN ALIGN UNTUK MENGATUR POSISINYA
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: GestureDetector(
                            onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  QRViewExample()),
                                );
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0),
                            );
                            },
                            // Padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF13E3D2),
                                    Color(0xFF5D74E2)
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80.0),
                                ),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                  minWidth: 150.0,
                                  minHeight: 36.0,
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
