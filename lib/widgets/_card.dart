import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconLeading;
  final String iconTrailing;
  final String type;
  CardWidget(
      {@required this.title,
      this.subtitle = '',
      this.iconLeading,
      this.iconTrailing,
      this.type = 'normal'});

  @override
  Widget build(BuildContext context) {
    final card = Container(
        child: Column(
      children: <Widget>[
        type == 'image' ? buildFaceInImage() : buildListTile(),
      ],
    ));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 7.0,
                spreadRadius: 1.0,
                offset: Offset(2.0, 5))
          ]),
      child: ClipRRect(borderRadius: BorderRadius.circular(30.0), child: card),
    );
  }

  buildFaceInImage() {
    return FadeInImage(
      image: NetworkImage(
          'https://images.wallpaperscraft.com/image/graffiti_origami_street_art_121202_3840x2160.jpg'),
      placeholder: AssetImage('assets/images/original.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      height: 300,
      fit: BoxFit.cover,
    );
  }

  /**
   * @description Render ListTile for Widget Card
   */
  buildListTile() {
    return ListTile(
      title: Text(title),
      leading: Icon(Icons.photo_album, color: Colors.blue),
      trailing: Icon(Icons.photo_album, color: Colors.blue),
      subtitle: Text(subtitle),
    );
  }

  /**
   * @description Render ButtonBar for Widget Card
   */
  buildButtonBar() {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Cancelar'),
          color: Colors.red,
        ),
        FlatButton(onPressed: () {}, child: Text('Aceptar')),
      ],
    );
  }
}
