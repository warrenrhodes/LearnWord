import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import 'themes/app_colors.dart';
import 'themes/app_text_styles.dart';

class Embellissement extends StatefulWidget {
  const Embellissement({Key? key}) : super(key: key);

  @override
  State<Embellissement> createState() => _EmbellissementState();
}

class _EmbellissementState extends State<Embellissement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kDarkHomeRGBO,
      appBar: AppBar(
        backgroundColor: AppColors.kDarkBlueDarkRGBO,
        title: const Text('Embellissement'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _etape("Insérer une image"),
                _customText(
                    "Vous pouvez insérer une image en cliquant sur le bouton ${convertToBold("Image")} situé dans le groupe ${convertToBold("Illustrations")} (onglet ${convertToBold("Insertion")})."),
                _displayImage(
                  'assets/30.png',
                ),
                _customText(
                    "En cliquant sur ${convertToBold("Image")}, vous ouvrirez une fenêtre qui donne accès à vos dossiers et vos fichiers. Il vous suffit alors de retrouver et de sélectionner l'image que vous voulez insérer dans votre document."),
                _displayImage(
                  'assets/31.png',
                ),
                _simpleText(
                    """L'image s'insère alors automatiquement dans votre document, à l'endroit où se trouvait
votre curseur.
Quand vous insérez votre image ou que vous cliquez sur une image dans votre document, un
nouvel outil apparaît : il s'agit de l'outil qui vous permet de modifier votre image."""),
                _displayImage(
                  'assets/32.png',
                ),
                _title('Insérer une image clipart'),
                _customText(
                    "Vous pouvez également choisir parmi les nombreuses images, vidéos et photos proposées par Word. Ces images s'appellent des ${convertToBold("Clipart")}."),
                _customText(
                    "Lorsque vous cliquez sur le bouton ${convertToBold("Image en ligne")}, vous pouvez faire une recherche par mots clés pour trouver l'image clipart que vous désirez :"),
                _displayImage(
                  'assets/33.png',
                ),
                _customText(
                    "Cliquez sur l'image choisie puis sur ${convertToBold("« Insérer »")} pour l'intégrer à votre document."),
                _simpleText(
                    "Les images Clipart peuvent également être modifiées : taille, cadre, mais aussi modifications des couleurs ..."),
                _title("Insérer une forme"),
                _customText(
                    "Il est aussi possible d'ajouter une forme dans votre document. Les formes proposées sont très variées. Vous pouvez les modifier à votre guise. Cliquez sur la forme choisie, rendez-vous ensuite dans le document, à l'endroit où vous voulez insérer la forme et cliquez-glissez votre souris. Vous pouvez dès ce moment choisir la taille, la largeur et la hauteur de votre forme. La barre d'outils spécifique à la modificatio de la forme apparaît alors dans le ruban. Elle vous permet de modifier la couleur, les contours, les effets d'ombre et le relief. Il est possible d'écrire du texte à l'intérieur d'une forme insérée dans un document. Pour ce faire, cliquez sur ${convertToBold("Zone de texte")} dans le menu ${convertToBold("Insertion")}."),
                _displayImage(
                  'assets/34.png',
                ),
                _etape("Modifier une image"),
                _customText(
                    "Quand on sélectionne une image dans son document, un outil ${convertToBold("Format image")} apparaît :"),
                _displayImage(
                  'assets/35.png',
                ),
                _simpleText(
                    "Si vous vous trouvez dans un autre ruban, il est possible que vous deviez cliquer sur l'outil pour le faire apparaître :"),
                _displayImage(
                  'assets/36.png',
                ),
                _simpleText(
                    "Les fonctionnalités s'appliquent à toutes les images (photos, dessins, Clipart). Passons les menus en revue."),
                _title("Menu Ajuster"),
                _rowImage(
                    text:
                        "Avec ces boutons, vous pouvez retravailler la luminosité et les contrastes de l'image.",
                    image: 'assets/37.png'),
                _simpleText(
                    "Cela peut être utile dans le cas où vous avez inséré des photos de qualité médiocre."),
                _simpleText(
                    "Vous pouvez également modifier la couleur de vos images ou Clipart."),
                _simpleText(
                    "C'est utile lorsque vous réalisez une affiche, une invitation... où le design est important !"),
                _displayImage(
                  'assets/38.png',
                ),
                _customText(
                    "Le bouton ${convertToBold("compresser")} vous permet de diminuer le poids de vos images, ce qui est utile dans le cas où vous souhaitez envoyer votre document par mail par exemple. Avec ${convertToBold("modifier votre image")}, vous pouvez changer d'image tout en gardant votre mise en forme (encadrement, forme, ...)."),
                _title("Menu « Styles d'images »"),
                _displayImage(
                  'assets/39.png',
                ),
                _simpleText(
                    "Vous pouvez travailler et embellir votre image en lui ajoutant un cadre ou un effet. Il suffit de cliquer sur votre image et de survoler les différents effets possibles pour les visualiser sur votre image. Une fois votre choix réalisé, cliquez sur l'effet voulu. N'hésitez pas à cliquer sur la flèche pour voir tous les encadrements proposés :"),
                _displayImage(
                  'assets/40.png',
                ),
                _customText(
                    "Le menu ${convertToBold("bord de l'image")} vous permet de modifier la couleur et l'épaisseur de votre encadrement"),
                _displayImage(
                  'assets/41.png',
                ),
                _customText(
                    "Avec le bouton ${convertToBold("Effets de l'image")}, vous accédez encore à des effets supplémentaires. Le tout est de choisir les effets en fonction de vos besoins et de vos goûts !"),
                _displayImage(
                  'assets/42.png',
                ),
                _title("Menu Taille"),
                _customText(
                    "Quand vous cliquez sur la fonction ${convertToBold("Rogner")}, des poignées"),
                _simpleText(
                    "apparaissent. Elles vous permettent de recouper votre image"),
                _displayImage(
                  'assets/43.png',
                ),
                _etape(
                    "Quelle est la différence entre RECOUPER/ROGNER et REDIMENSIONNER ?"),
                _simpleText(
                    "En redimensionnant l'image, elle apparaît entière, mais plus petite. Quand on rogne, on enlève un morceau de l'image"),
                _displayImage(
                  'assets/44.png',
                ),
                _customText(
                    "Les cases de taille d'images vous permettent d'agrandir ou de réduire l'image de manière parfaite. En effet, le système garde les proportions entre la hauteur et la largeur. Vous ne déformez pas l'image. Pour le menu ${convertToBold("Organiser")}, rendez-vous dans la partie ${convertToBold("Organiser les images sur son document")}."),
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

  Padding _displayImage(String imageSource) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 10),
      child: GestureDetector(
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
