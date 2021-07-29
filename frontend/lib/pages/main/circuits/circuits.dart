import 'package:flutter/material.dart';

class CircuitsPage extends StatelessWidget {
  const CircuitsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Row(
          children: gates
              .map((kind) => Draggable(
                    child: GateBox(size: 40, kind: kind),
                    feedback: GateBox(size: 44, kind: kind),
                  ))
              .toList(),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: 50,
                  child:
                      Container(color: Colors.black, width: 1920, height: 2)),
              Positioned(
                  top: 100,
                  child: Container(color: Colors.black, width: 1920, height: 2))
            ],
          ),
        ),
      )
    ]);
  }
}

const gates = ["X", "Y", "Z", "H"];

class GateBox extends StatelessWidget {
  const GateBox({
    Key? key,
    required this.size,
    required this.kind,
  }) : super(key: key);

  final double size;
  final String kind;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      color: Colors.blue,
      child: SizedBox(
          width: size,
          height: size,
          child: Align(
            alignment: Alignment.center,
            child: Text(kind,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 25)),
          )),
    );
  }
}
