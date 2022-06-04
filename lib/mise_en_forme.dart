import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import 'embellissement.dart';
import 'themes/app_colors.dart';
import 'themes/app_text_styles.dart';

class MiseEnForme extends StatefulWidget {
  const MiseEnForme({Key? key}) : super(key: key);

  @override
  State<MiseEnForme> createState() => _MiseEnFormeState();
}

class _MiseEnFormeState extends State<MiseEnForme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kDarkHomeRGBO,
      appBar: AppBar(
        backgroundColor: AppColors.kDarkBlueDarkRGBO,
        title: const Text('Mise en forme'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _etape("Groupe Paragraphe"),
                _customText(
                    "Toutes les options concernant la disposition du texte sur votre page et son organisation setrouvent dans l’onglet ${convertToBold("Accueil")}, dans le groupe ${convertToBold("Paragraphe")}."),
                _displayImage(
                  'assets/10.png',
                ),
                _simpleText(
                    "Par défaut, le texte est aligné sur le bord gauche de votre page. Pour le modifier :"),
                _rowImage(
                    text: "1. Sélectionner le texte à aligner",
                    image: 'assets/11.png'),
                _rowImage(
                    text:
                        "2. Choisissez l'emplacement du texte en utilisant les boutons d'alignement : à gauche, au centre, à droite.",
                    image: 'assets/12.png'),
                _rowImage(
                    text:
                        "Par défaut, votre texte est aligné à gauche, c'est pour cela que le bouton de gauche est coloré. Vous pouvez également le centrer, le justifier ou l’aligner sur le bord droit de votre page.",
                    image: 'assets/13.png'),
                _rowImage(
                    text: "3. Voilà ! L'emplacement de votre texte a changé",
                    image: 'assets/14.png'),
                _title(
                    "- Augmenter / diminuer le retrait de votre texte par rapport au bord de la page."),
                _rowImage(
                    text: "1. Sélectionnez le texte", image: 'assets/15.png'),
                _rowImage(
                    text: "2. Cliquez sur le bouton « Augmenter le retrait ».",
                    image: 'assets/16.png'),
                _rowImage(
                    text:
                        "3. Votre texte s’éloigne du bord gauche de la page. A chaque clic sur ce bouton, vous augmentez le retrait.",
                    image: 'assets/17.png'),
                _rowImage(
                    text:
                        "4. Pour approcher, à nouveau le texte du bord gauche de la page, utilisez le bouton « Diminuer le retrait ».",
                    image: 'assets/18.png'),
                _customText(
                    """Même si le texte est aligné à gauche, il reste tout de même un espace entre le bord de la page et le texte. Il s'agit des ${convertToBold("marges")}. Elles sont créées automatiquement par le programme de traitement de texte afin de garantir une impression correcte de la page. Vous avez cependant la possibilité de réduire la taille de ces marges."""),
                _title("Réaliser une liste numérotée"),
                _rowImage(text: """Placez votre curseur
            devant le texte à numéroter.""", image: 'assets/19.png'),
                _rowImage(text: """2. Cliquez sur le bouton
            « Numérotation ».""", image: 'assets/20.png'),
                _rowImage(text: """3. Pour ajouter l'élément
            suivant à la liste, appuyez sur
            la touche clavier "ENTER".
            Word insère
            automatiquement le numéro
            suivant.""", image: 'assets/21.png'),
                _customText(
                    "4. Pour terminer la liste, appuyez deux fois sur la touche clavier ${convertToBold("ENTER")}."),
                _simpleText(
                    """Pour insérer du texte entre le premier élément numéroté et le deuxième élément numéroté,
comme dans l'exemple ci-dessous, il y a une astuce !"""),
                _displayImage(
                  'assets/22.png',
                ),
                _customText(
                    "Lorsque vous appuyez sur la touche clavier ${convertToBold("ENTER")}, poussez en même temps sur la touche majuscule de votre clavier. Ainsi, l'ordinateur passe à la ligne suivante sans la numéroter."),
                _title("Insérer des puces dans une liste"),
                _customText(
                    "Le bouton ${convertToBold("«Puces»")} permet d’insérer des listes de puces dans vos documents."),
                _displayImage(
                  'assets/23.png',
                ),
                _simpleText(
                    "Ce bouton fonctionne de la même manière que celui des numéros."),
                _rowImage(
                    text:
                        "1. Placez votre curseur à l'endroit où vous désirez insérer la puce et cliquez sur le bouton ${convertToBold("Puces")}.",
                    image: 'assets/24.png'),
                _rowImage(
                    text:
                        "2. Poussez sur la touche ENTER, le programme ajoute automatiquement une puce au début de la ligne suivante.",
                    image: 'assets/25.png'),
                _customText(
                    "3. Pour terminer la liste à puces, appuyez deux fois sur la touche clavier ${convertToBold("ENTER")}."),
                _title("Encadrer rapidement du texte"),
                _rowImage(
                    text: "Sélectionnez le texte à encadrer.",
                    image: 'assets/26.png'),
                _customText(
                    "2. Cliquez sur la petite flèche noire à droite du bouton ${convertToBold("Bordures")}"),
                _displayImage(
                  'assets/27.png',
                ),
                _customText(
                    "3. Dans la liste qui apparait, choisissez ${convertToBold("Bordures extérieures")}"),
                _displayImage(
                  'assets/28.png',
                ),
                _rowImage(
                    text:
                        "4. Votre texte est immédiatement encadré sur toute la largeur de la feuille.",
                    image: 'assets/29.png'),
                const SizedBox(
                  height: 90,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Embellissement()),
                    ),
                    child: const Text('👉🏻Embellissement'),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  StyledText _customText(String text) {
    return StyledText(
      style: AppTextStyles.textStyle,
      text: text,
      tags: {
        'bold': StyledTextTag(style: AppTextStyles.importantText),
      },
    );
  }

  String convertToBold(String test) => '<bold>$test</bold>';

  SizedBox _boxSpace() {
    return const SizedBox(
      height: 10,
    );
  }

  Center _etape(String text) {
    return Center(
      child: Text(
        '👉🏻 $text',
        style: AppTextStyles.title,
      ),
    );
  }

  Padding _displayImage(
    String imageSource,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 10),
      child: GestureDetector(
        onDoubleTap: (() {
          const double scale = 3;
          final zoomed = Matrix4.identity()..scale(scale);
          final value = zoomed;
        }),
        child: InteractiveViewer(
          clipBehavior: Clip.none,
          panEnabled: false,
          scaleEnabled: false,
          child: Image.asset(imageSource),
        ),
      ),
    );
  }

  _simpleText(String s) => Text(s, style: AppTextStyles.textStyle);

  _urgentText(String s) => StyledText(
        style: AppTextStyles.urgentText,
        text: s,
        tags: {
          'bold': StyledTextTag(style: AppTextStyles.urgentText),
        },
      );

  _rowImage({required String text, required String image}) => Wrap(
        children: [
          _simpleText(text),
          Image.asset(image),
        ],
      );

  _title(String s) => Text(
        s,
        style: AppTextStyles.title,
      );
}
