// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color.fromARGB(255, 184, 18, 18);
  static const Color contentColorVinho = Color.fromARGB(255, 104, 14, 14);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}

class FCoresBasicas {
  static final FCoresBasicas _instance = FCoresBasicas._internal();

  FCoresBasicas._internal();

  // passes the instantiation to the _instance object
  factory FCoresBasicas() => _instance;

  static FCoresBasicas get i {
    return _instance;
  }

  Color navigationBar = const Color.fromARGB(255, 48, 48, 48);
  Color navigationText = const Color.fromARGB(255, 242, 242, 242);

  Color amarelo = const Color.fromARGB(255, 255, 253, 130); // fffdcc (16776652)
  Color amareloAlterar = const Color.fromARGB(255, 227, 146, 11);
  Color azul = const Color.fromARGB(255, 50, 121, 204); // 3279cc (3307980)
  Color azulEscuro = const Color.fromARGB(255, 9, 34, 52);
  Color azulIncluir = const Color.fromARGB(255, 1, 84, 139);
  Color brancoClaro = const Color.fromARGB(255, 250, 250, 250);
  Color brancoPuro = const Color.fromARGB(255, 255, 255, 255);
  Color branco = const Color.fromARGB(255, 250, 250, 250);
  // Color branco = const Color.fromARGB(255, 228, 228, 228);
  Color brancoMedio = const Color.fromARGB(255, 200, 200, 200);
  Color brancoEscuro0 = const Color.fromARGB(255, 240, 240, 240);
  Color brancoEscuro = const Color.fromARGB(255, 161, 161, 161);
  Color ciano = const Color.fromARGB(255, 16, 182, 204);
  Color cinza = const Color.fromARGB(255, 238, 238, 238);
  Color cinzaClaro = const Color.fromARGB(255, 147, 147, 147);
  Color cinzaMedio = const Color.fromARGB(255, 121, 121, 121);
  Color cinzaEscuro = const Color.fromARGB(255, 94, 94, 94);
  Color laranja = const Color.fromARGB(255, 247, 136, 10);
  Color laranjaEscuro = const Color.fromARGB(185, 247, 136, 10);
  Color preto = const Color.fromARGB(255, 34, 34, 34);
  Color pretoMedio = const Color.fromARGB(255, 62, 62, 62);
  Color pretoEscuro = const Color.fromARGB(255, 17, 17, 17);
  Color pretoEscuroC = const Color.fromARGB(255, 8, 8, 8);
  Color roxo = const Color.fromARGB(255, 112, 95, 180);
  Color verde = const Color.fromARGB(255, 82, 167, 121);
  Color verdeDuplicar = const Color.fromARGB(255, 1, 113, 1);
  Color verdeEscuro = const Color.fromARGB(255, 24, 107, 21);
  Color verdeWhatsapp = const Color.fromARGB(255, 18, 140, 126);
  Color vermelho = const Color.fromARGB(255, 220, 22, 19);
  Color vermelhoClaro = const Color.fromARGB(255, 255, 64, 64);
  Color vermelhoEscuro = const Color.fromARGB(255, 128, 0, 0);
  Color vermelhoExcluir = const Color.fromARGB(255, 215, 5, 0);

  Color invariavelNormal = const Color.fromARGB(255, 228, 228, 228);
  Color invariavelReduzido = const Color.fromARGB(255, 195, 195, 195);

  Color framePrincipalNot = const Color.fromARGB(255, 242, 52, 89);

  Color normal = const Color.fromARGB(255, 34, 34, 34);

  Color n1 = const Color.fromARGB(255, 54, 34, 71);
  Color n2 = const Color.fromARGB(255, 105, 88, 131);
  Color n3 = const Color.fromARGB(255, 188, 180, 186);
  Color n4 = const Color.fromARGB(255, 222, 190, 160);
  Color n5 = const Color.fromARGB(255, 164, 84, 95);
  Color n6 = const Color.fromARGB(255, 120, 65, 70);

  // Color nMais1 = const Color.fromARGB(255, 62, 110, 122);
  Color cInfo = const Color.fromARGB(255, 99, 98, 119);
  Color cMais1 = const Color.fromARGB(255, 135, 156, 163);
  Color cMore = const Color.fromARGB(255, 179, 168, 160);
  Color cAlternate = const Color.fromARGB(255, 105, 88, 131);
  Color cUploadDownload = const Color.fromARGB(255, 10, 147, 150);

  Color nInfo2 = const Color.fromARGB(255, 99, 98, 119);

  Color cCor1 = const Color.fromARGB(255, 249, 65, 68);
  Color cCor2 = const Color.fromARGB(255, 243, 114, 44);
  Color cCor3 = const Color.fromARGB(255, 249, 132, 74);
  Color cCor4 = const Color.fromARGB(255, 249, 199, 79);
  Color cCor5 = const Color.fromARGB(255, 144, 190, 109);
  Color cCor6 = const Color.fromARGB(255, 67, 170, 139);
  Color cCor7 = const Color.fromARGB(255, 77, 144, 142);
  Color cCor8 = const Color.fromARGB(255, 87, 117, 144);
  Color cCor9 = const Color.fromARGB(255, 39, 125, 161);
  Color cCor0 = const Color.fromARGB(255, 248, 150, 30);

  Color card0 = const Color.fromARGB(255, 10, 10, 10);
  Color card1 = const Color.fromARGB(255, 10, 10, 10).withAlpha(240);
  Color card2 = const Color.fromARGB(255, 10, 10, 10).withAlpha(230);
  Color card3 = const Color.fromARGB(255, 10, 10, 10).withAlpha(220);
  Color card4 = const Color.fromARGB(255, 10, 10, 10).withAlpha(210);

  Color cPadrao = const Color.fromARGB(255, 34, 34, 34);
  Color cPadraoI = const Color.fromARGB(255, 250, 250, 250);
}
