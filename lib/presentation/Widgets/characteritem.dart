import 'package:cubit1/data/Models/characters_model.dart';
import 'package:flutter/material.dart';

class Characteritem extends StatelessWidget {
  Character character;
  Characteritem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: GridTile(
        child: Container(
          color: Colors.grey,
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: 'lib/assets/Animation - 1728220115180.gif',
                  image: character.image,
                  fit: BoxFit.cover,
                )
              : Image.asset('lib/assets/21852210_fitness_v_02.jpg'),
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
                height: 1.3,
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
