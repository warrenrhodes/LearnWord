import 'package:didacticiel/connexion_view.dart';
import 'package:didacticiel/themes/app_colors.dart';
import 'package:didacticiel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import 'mise_en_forme.dart';

class Didacticiel extends StatefulWidget {
  const Didacticiel({Key? key}) : super(key: key);

  @override
  State<Didacticiel> createState() => _DidacticielState();
}

class _DidacticielState extends State<Didacticiel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kDarkHomeRGBO,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false),
              icon: const Icon(Icons.logout))
        ],
        backgroundColor: AppColors.kDarkBlueDarkRGBO,
        title: const Text('Utilisation De Word'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            _etape('Presention General De Word 2013'),
            _displayImage('assets/1.png'),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "Ce qui est notable dans Word 2013, c'est le ruban. Il s'agit de la bande horizontale supérieure qui donne accès à toutes les fonctionnalités de Word. Le ruban présente plusieurs onglets <bold>(Accueil, Insertion, Mise en page...)</bold>. Il suffit de cliquer sur ces onglets pour faire apparaître d'autres fonctionnalités.",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            _boxSpace(),
            _etape('Ouvrir et Fermer Word'),
            _boxSpace(),
            StyledText(
                style: AppTextStyles.textStyle,
                text:
                    "Vous avez plusieurs possibilités pour ouvrir le programme Word. Apprenez d'abord à repérer l'icône qui le représente:"),
            Image.asset('assets/3.png'),
            const Text(
              "1. Si l'icône se trouve sur votre bureau, il vous suffit de double-cliquer dessus",
              style: AppTextStyles.textStyle,
            ),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "2. Vous pouvez cliquer sur le bouton <bold>Démarrer</bold> dans la barre de menu inférieure, sélectionner le programme dans la liste et cliquer.",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            const Text(
                "3. Vous pouvez aussi ouvrir directement le programme en double-cliquant sur un document Word dans votre arborescence ou reçu par mail par exemple:",
                style: AppTextStyles.textStyle),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "  ${convertToBold('*')} Pour quitter, il suffit de cliquer sur la croix en haut à droite ou de cliquer sur l'onglet <bold>Fichier</bold> et de choisir la commande <bold>Quitter</bold>.",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            Container(
              color: AppColors.white,
              child: StyledText(
                style: AppTextStyles.tableRowStyle,
                text:
                    " Attention, il y a une différence entre ${convertToBold('FERMER')} et ${convertToBold('QUITER')}\n${convertToBold('FERMER')} : il est possible de fermer le document ouvert tout en maintenant Word ouvert. Pour ce faire, cliquer sur l'onglet ${convertToBold('Fichier')} puis ${convertToBold('Fermer')}.\n${convertToBold('Quiter')} : en cliquant sur la croix en haut à droite, vous fermez le document ouvert et Word.",
                tags: {
                  'bold': StyledTextTag(style: AppTextStyles.importantText),
                },
              ),
            ),
            Container(
              color: AppColors.kBlack12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '⚠️⚠️ Attention: si vous avez ce message:',
                    style: AppTextStyles.urgentText,
                  ),
                  _displayImage(
                    'assets/2.png',
                  ),
                  const Text(
                    "c'est que vous n'avez pas enregistré votre document.",
                    style: AppTextStyles.textStyle,
                  )
                ],
              ),
            ),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "- Cliquez sur ${convertToBold('ENREGISTRER')} pour enregistrer le document (vous devrez alors le nommer, voir la partie concernant l'enregistrement).",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "- Cliquez sur ${convertToBold('NE PAS ENREGISTRER')} pour ne rien enregistrer (vous perdrez tout ce que vous avez fait dans ce document).",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            StyledText(
              style: AppTextStyles.textStyle,
              text:
                  "- Cliquez sur ${convertToBold('ANNULER')} si vous avez cliqué sur la croix par erreur et que vous souhaitez rester dans votre document.",
              tags: {
                'bold': StyledTextTag(style: AppTextStyles.importantText),
              },
            ),
            _etape('Ouvrir un document'),
            _simpleText(
                'Il existe principalement 2 méthodes pour ouvrir un document existant :'),
            _simpleText(
                "* Soit vous le retrouvez dans vos dossiers et il suffit d’un double-clic sur l’icône pour qu’il s’ouvre. Ne vous tracassez pas si le programme n'est pas ouvert, tout se fera automatiquement."),
            _customText(
                "* Soit le programme est déjà ouvert et dans ce cas-là, vous allez utiliser la commande ${convertToBold('« Ouvrir »')} de l’onglet ${convertToBold('« Fichier »')}"),
            _displayImage(
              'assets/4.png',
            ),
            _customText(
                "En cliquant sur ${convertToBold('Ordinateur')}, vous pouvez parcourir votre arborescence pour retrouvervotre fichier et l’ouvrir en cliquant sur ${convertToBold('Ouvrir')}."),
            _customText(
                "S'il s'agit d'un document que vous avez utilisé récemment, il se trouvera dans la liste des ${convertToBold("Documents (utilisation récente)")}, ce qui vous facilite grandement la recherche !"),
            _displayImage(
              'assets/5.png',
            ),
            _etape('Créer un nouveau document'),
            _customText(
                "Une fois dans Word, vous devez cliquer sur l’onglet ${convertToBold('Fichier')} puis sur ${convertToBold('Nouveau')} pour créer un nouveau document."),
            _displayImage(
              'assets/6.png',
            ),
            _customText(
                "En double-cliquant sur ${convertToBold("Document vierge")}, une page blanche est disponible. Word propose également une série de modèles prétablis qui peuvent vous faire gagner un temps précieux en mise en forme."),
            _etape("Enregistrer le document"),
            _simpleText(
                "Une fois votre document créé, enregistrez-le le plus vite possible, au risque de perdre tout votre travail!.\n Pour ce faire :"),
            _customText(
                "     * cliquez sur l’onglet ${convertToBold("Fichier")} puis sur  ${convertToBold("Enregistrer sous ")}.\n     * Vous devez choisir l’emplacement sur lequel enregistrer votre fichier :"),
            _displayImage(
              'assets/7.png',
            ),
            _simpleText(
                "Si vous choisissez de l’enregistrer sur votre ordinateur :"),
            _customText(
                "🔸 En double-cliquant sur ${convertToBold("Ordinateur")} : une fenêtre s’ouvre en vous proposant de nommer votre document et de choisir le dossier dans lequel vous voulez l’enregistrer."),
            _customText(
                "🔸 En cliquant sur ordinateur : vous pouvez parcourir votre arborescence en cliquant sur ${convertToBold("Parcourir")} dans la fenêtre de droite ou choisir votre fichier dans un dossier récemment utilisé :"),
            _urgentText(
                "Soyez attentif à l’endroit où vous l’enregistrez, car vous risquez de ne plus le retrouver ! Par défaut, le système enregistre les documents dans le répertoire ${convertToBold("Mes documents")}."),
            _customText(
                "Une fois que vous avez cliqué sur ${convertToBold("Enregistrer")}, vous verrez que votre document revêtmaintenant le nom que vous lui avez donné :"),
            _displayImage(
              'assets/8.png',
            ),
            Container(
              color: AppColors.kBlackColor,
              child: Column(
                children: [
                  _customText(
                      "À savoir : pour revenir dans votre document quand vous êtes dans l’onglet ${convertToBold("Fichier")}, vous devez cliquer sur la flèche en haut :"),
                  _displayImage(
                    'assets/9.png',
                  ),
                ],
              ),
            ),
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
                        MaterialPageRoute(builder: (_) => const MiseEnForme()),
                      ),
                  child: const Text('👉🏻Mise en forme')),
            ),
          ]),
        ),
      ),
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
}
