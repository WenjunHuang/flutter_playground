import 'package:characters/characters.dart';
void main(){
  var hi = 'Hi 🇩🇰';
  print('String is "$hi"\n');

  // Length
  print('String.length: ${hi.length}');
  print('Characters.length: ${hi.characters.length}\n');

  // Last character.
  print('The string ends with: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}\n');
}
