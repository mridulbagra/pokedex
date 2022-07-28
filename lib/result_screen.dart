import 'package:flutter/material.dart';
import 'package:pokedex_fluter/pokemon.dart';


const kPlaceholderImg = 'images/placeholder-image.png';
const kPokemonNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
const kPokemonAttrStyle = TextStyle(
  fontSize: 25.0,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],

          appBar: AppBar(
            title:Text('pokemon detail'),
            centerTitle: true,
            backgroundColor: Colors.greenAccent[400],
          ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: FadeInImage.assetNetwork(
                  placeholder: kPlaceholderImg,
                  image: pokemon.sprites.frontDefault!,
                  imageScale: 0.1,
                ),
              ),
              Expanded(

                child: Column(
                  children: [
                    Text(pokemon.name, style: kPokemonNameStyle),
                    Text('weight: ${pokemon.weight.toString()}kg',
                        style: kPokemonAttrStyle),
                    Text('height: ${pokemon.height.toString()}ft',
                        style: kPokemonAttrStyle),
                    Text('type(s): ${pokemon.getTypes()}',
                        style: kPokemonAttrStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
