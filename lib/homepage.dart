// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
// import 'dart:html';

import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_tutorial/Mydrawer.dart';
import 'package:flutter_tutorial/model/item.dart/item.dart';

import 'myshow.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 4));
    final itemjson = await rootBundle.loadString("lib/assets/files/emoji.json");
    final decodeData = jsonDecode(itemjson);
    var itemData = decodeData["product"];
    MyItems.product =
        List.from(itemData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dum = List.generate(10, ((index) => MyItems.product[0]));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(CupertinoIcons.cart)),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          // child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopText(),
              if (MyItems.product != null && MyItems.product.isNotEmpty)
                ListShow().expand()
              else
                Center(
                  child: CircularProgressIndicator().centered(),
                ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "DEVIK",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),

      // body: (MyItems.product != null && MyItems.product.isNotEmpty)
      //     ? GridView.builder(
      //         padding: EdgeInsets.all(20),
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
      //         itemCount: MyItems.product.length,
      //         itemBuilder: ((context, index) {
      //           return MyShow(it: MyItems.product[index]);
      //         }))

      // ListView.builder(
      //     itemCount: MyItems.product.length,
      //     itemBuilder: ((context, index) {
      //       return MyShow(it: MyItems.product[index]

      //           // it: dum[index]
      //           );
      //     }))

      drawer: MyDrawer(),
      // )
    );

    // body: Column(
    //   children: [
    //     Container(
    //       height: 100,
    //       width: 500,
    //       child: Card(
    //         child: ListView(children: [
    //           Text("Hackathon 1", style: TextStyle(fontSize: 20)),
    //           ListTile(
    //             leading: Image.asset(
    //                 "lib/assets/images/GojoSatoruThumb-320x180.png"),
    //             title: Text("Infomation"),
    //             trailing: ElevatedButton(
    //                 onPressed: (() {}), child: Text("Click Me")),
    //             // trailing: Image.asset(
    //             //     "lib/assets/images/GojoSatoruThumb-320x180.png"),
    //           ),
    //         ]),
    //         elevation: 1.2,
    //         color: Colors.blueGrey[50],
    //         shadowColor: Colors.blueGrey[900],
    //       ),
    //     ),
    //   ],
  }
}

class ListShow extends StatelessWidget {
  const ListShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: MyItems.product.length,
        itemBuilder: ((context, index) {
          Item item = MyItems.product[index];
          return LayOut(it: item);
        }));
  }
}

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: "Devik ".text.color(Colors.deepPurple).bold.xl6.make());
  }
}

class LayOut extends StatelessWidget {
  final Item it;
  const LayOut({
    Key? key,
    required this.it,
  })  : assert(it != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [
        Hero(tag: Key(it.id), child: Imageset(it: it)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              it.name.text.bold.xl.make(),
              it.des.text.textStyle(context.captionStyle).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${it.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    child: "Add to cart".text.make(),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(30, 10, 10, 0),
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     child: "\$${it.price} ".text.make(),
        //   ),
      ]),
    ).color(Colors.deepPurple).square(100).rounded.make().py4();
  }
}

class Imageset extends StatelessWidget {
  final Item it;
  const Imageset({
    Key? key,
    required this.it,
  })  : assert(it != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyCart(it: it))),
          child: Image.network(it.img)
              .box
              .white
              .rounded
              .make()
              .w24(context)
              .h24(context),
        )).p12();
  }
}

class MyCart extends StatelessWidget {
  final Item it;
  const MyCart({
    Key? key,
    required this.it,
  })  : assert(it != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // floatingActionButton: FloatingActionButton.large(

        //     onPressed: () {},
        //     child: ButtonBar(
        //       // alignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         "\$${it.price}".text.make().p20(),
        //         ElevatedButton(
        //           onPressed: () {},
        //           child: "Buy".text.make(),
        //           style: ButtonStyle(
        //               shape: MaterialStateProperty.all(StadiumBorder())),
        //         ).p20()
        //       ],
        //     )),
        // (
        //       child: ButtonBar(
        //         alignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           "\$${it.price}".text.make().p20(),
        //           ElevatedButton(
        //             onPressed: () {},
        //             child: "Buy".text.make(),
        //             style: ButtonStyle(
        //                 shape: MaterialStateProperty.all(StadiumBorder())),
        //           ).p20()
        //         ],
        //       )),
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Hero(tag: Key(it.id), child: Image.network(it.img).centered()),
              Expanded(
                child: VxArc(
                    edge: VxEdge.TOP,
                    arcType: VxArcType.CONVEY,
                    child: Container(
                        width: context.screenWidth,
                        color: Colors.deepPurple[100],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              it.name.text.xl4.bold.make().pOnly(top: 64),
                              it.des.text.xl3.make(),
                              ButtonBar(
                                buttonHeight: 30,
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  "\$${it.price}"
                                      .text
                                      .xl4
                                      .bold
                                      .green400
                                      .make()
                                      .p20(),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: "Buy".text.make(),
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            StadiumBorder())),
                                  ).p20()
                                ],
                              ).pOnly(top: 270)
                            ])),
                    height: 40),
              )
            ],
          ),
        ));
  }
}
