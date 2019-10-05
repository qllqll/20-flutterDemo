import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color WidgetColor;
  DraggableWidget({Key key, this.offset, this.WidgetColor}) : super(key: key);

  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
Offset offset = Offset(0, 0);

@override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.WidgetColor,
        child: Container(
          width: 100,
          height: 100,
          color: widget.WidgetColor,
        ),
        feedback: Container(
          width: 110,
          height: 110,
          color: widget.WidgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset){
          setState(() {
            this.offset = offset; 
          });
        },
      ),
    );
  }
}