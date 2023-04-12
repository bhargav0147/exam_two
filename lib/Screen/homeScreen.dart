import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtvalue =TextEditingController();
int value=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Multification Table",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 20),
        ),
        leading: Center(
          child: Icon(Icons.calculate_outlined,color: Colors.black,size: 25,),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value=0;
        });
      },child: Icon(Icons.restart_alt),backgroundColor: Colors.indigoAccent),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                controller: txtvalue,
                keyboardType: TextInputType.number,
                cursorColor: Colors.indigo,
                decoration: InputDecoration(
                  hintText: "Enter Number",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent, width: 2)),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          value = int.parse(txtvalue.text);
                        });
                      },child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.chevron_right,color: Colors.indigoAccent,size: 30,),
                      ))
                ),
              ),
              SizedBox(height: 20),
              Visibility(
                visible: value==0?false:true,
                child: SizedBox(
                  height: 650,
                    width: 300,
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 45,width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.indigoAccent),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("$value X",style: TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5),
                              Text("${index+1} =",style: TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5),
                              Text("${value*(index+1)}",style: TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold),),
                            ],
                          )
                      );
                    },itemCount: 10,)),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ));
  }
}
