part of 'pages.dart';

class Week3Page extends StatefulWidget {

  @override
  _Week3PageState createState() => _Week3PageState();
}

class _Week3PageState extends State<Week3Page> {
    Color iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            )
          ),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  //color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        
                        child: Image.asset(
                          'assets/images/gambar.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                       Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton.icon(
                          onPressed: () {
                           setState(() {                             
                              if(iconColor == Colors.red){
                                iconColor = Colors.grey;
                              }else{
                                iconColor = Colors.red;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: iconColor,
                          ),
                          
                          label: Text(''),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            elevation: 0,
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size.fromRadius(2),
                            primary: Colors.white,
                            shape: CircleBorder(
                              
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children : <Widget>[
                     Flexible(
                          flex: 1,
                          child: Container(
                            
                              child: Container(
                                margin: EdgeInsets.all(3),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                          'assets/images/gambar1.jpg',
                          fit: BoxFit.cover,
                          
                        )),                           
                    )),
                    ),
                     Flexible(
                          flex: 1,
                          child: Container(
                            
                              child: Container(
                                margin: EdgeInsets.all(3),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                          'assets/images/gambar2.jpg',
                          fit: BoxFit.cover,
                          
                        )),                           
                    )),
                    ),
                    Flexible(
                          flex: 1,
                          child: Container(
                            
                              child: Container(
                                margin: EdgeInsets.all(3),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                          'assets/images/gambar3.jpg',
                          fit: BoxFit.cover,
                          
                        )),                           
                    )),
                    ),
                    Flexible(
                          flex: 1,
                          child: Container(
                            
                              child: Container(
                                margin: EdgeInsets.all(3),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                          'assets/images/gambar.jpg',
                          fit: BoxFit.cover,
                          
                        )),                           
                    )),
                    ),
                  ],
                  ),
                ),
            Flexible(
                flex: 4,    
                child: ListView(
                  children: <Widget>[   
                    Container(
                      padding: EdgeInsets.all(15),
                        child: Text(
                        "Welcome to Golden Tulip Holland Batu",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                      ),                 
                      Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                          style: TextStyle(fontSize: 16)
                      ),
                  ),
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                              style: TextStyle(fontSize: 16)
                          ),
                      ),
                        Container(
                            padding: EdgeInsets.all(15),
                            child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                                style: TextStyle(fontSize: 16)
                            ),
                        ),   
                  ]
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
