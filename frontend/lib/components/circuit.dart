import 'package:flutter/material.dart';
import '../constants.dart';

class Circuit extends StatefulWidget {
  const Circuit({
    Key? key,
  }) : super(key: key);

  @override
  _CircuitState createState() => _CircuitState();
}

class _CircuitState extends State<Circuit> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(children: [
        Container(
            decoration: BoxDecoration(color: secondaryColor),
            padding: EdgeInsets.all(defaultPadding),
            child: Row(
              children: [
                DraggableGate(
                  name: "H",
                ),
                DraggableGate(
                  name: "X",
                ),
                DraggableGate(
                  name: "Y",
                ),
                DraggableGate(
                  name: "Z",
                )
              ],
            )),
        SizedBox(height: defaultPadding),
        SizedBox(
          height: 500,
          child: Container(
            color: secondaryColor,
            child: Stack(
              children: [
                Positioned(
                    top: 30,
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline_rounded),
                        color: Colors.white.withOpacity(0.1),
                        hoverColor: Colors.red.withOpacity(1),
                        splashRadius: 0.01,
                      ),
                      SizedBox(
                          height: 2,
                          width: 10000,
                          child: Container(color: Colors.white)),
                    ]))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class DraggableGate extends StatelessWidget {
  const DraggableGate({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: Gate(name: name),
      feedback: Gate(
        name: name,
      ),
    );
  }
}

class Gate extends StatelessWidget {
  const Gate({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding * 0.8),
      child: SizedBox(
          width: defaultPadding * 2,
          height: defaultPadding * 2,
          child: Container(
              color: primaryColor,
              child: Center(
                child:
                    Text("$name", style: Theme.of(context).textTheme.subtitle2),
              ))),
    );
  }
}
