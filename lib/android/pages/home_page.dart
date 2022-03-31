import 'package:appsoma/bloc/soma.bloc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = SomaBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: false,
                expandedHeight: MediaQuery.of(context).size.height * 0.3,
                backgroundColor: Colors.white,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: const EdgeInsets.only(top: 50.0),
                  title: const Text(
                    "Raiz Q",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  background:
                      Lottie.asset("assets/img/calculate.json", animate: true),
                ),
              )
            ];
          },
          body: Container(),
        ));
  }
}
