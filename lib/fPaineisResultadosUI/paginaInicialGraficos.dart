// ignore_for_file: library_private_types_in_public_api, file_names, unused_import

import 'package:fl_chart_test/CoresAuxiliaresGraficos.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPainel.dart';
import 'package:fl_chart_test/fClassesPaineisR/FPaineisRPrincipal.dart';
import 'package:fl_chart_test/funcoes/fGraficosBI.dart';
import 'package:flutter/material.dart';

class PaginaInicialGraficos extends StatefulWidget {
  const PaginaInicialGraficos({super.key});

  @override
  _PaginaInicialGraficosState createState() => _PaginaInicialGraficosState();
}

class _PaginaInicialGraficosState extends State<PaginaInicialGraficos> {
  FPaineisRPrincipal oPainelPrincipal = FPaineisRPrincipal()..listaPaineis = [];
  Future<bool>? _future;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // contém ou conterá o json do painel (FPaineisRPrincipal)
    // if (widget.oBi1.con_bi1 != null && widget.oBi1.con_bi1 != "") {
    //   oPainelPrincipal = FPaineisRPrincipal.fromJsonString(widget.oBi1.con_bi1!);
    // }

    _future = myFuture();
  }

  Future<bool> myFuture() async {
    return true;
  }

  void mostrarOpcoesDeCampo(BuildContext context) async {
    List<String> lCampoOpcoes = [
      "Nenhum",
      "Quantidade",
      "Valor",
      "Custo",
      "Descontos \$",
      "Descontos %",
      "Rentabilidade \$",
    ];

    // int iRetorno = await FGeral.dialogMultiploOkCancelarInt("Ordenar por", lCampoOpcoes, okLabel: "Confirmar", cancelLabel: "Cancelar");
    // if (iRetorno == -1) {
    //   return;
    // }

    setState(() {}); // ;   // TRATAR ordernar por campo1 campo2 e campo3
  }

  @override
  Widget build(BuildContext context) {
    double dBarrasHV = 150;
    double dWrapEspacamento = 10;
    double dScreenWidth = MediaQuery.of(context).size.width;
    double dScreenHeight = MediaQuery.of(context).size.height;
    int iQuantidadeDeGraficos = oPainelPrincipal.listaPaineis!.length;

    int iGraficosPorLinha, iGraficosPorColuna;
    double dGraficoLargura;
    double dGraficoAltura = dScreenHeight;

    // Definindo a quantidade de gráficos por linha baseado na largura da tela
    if (dScreenWidth > 1300) {
      iGraficosPorLinha = 3;
    } else if (dScreenWidth > 800) {
      iGraficosPorLinha = 2;
    } else {
      iGraficosPorLinha = 1;
    }

    if (dScreenHeight > 1300) {
      iGraficosPorColuna = 3;
    } else if (dScreenHeight > 800) {
      iGraficosPorColuna = 2;
    } else {
      iGraficosPorColuna = 1;
    }

    if (iQuantidadeDeGraficos <= iGraficosPorLinha) {
      iGraficosPorLinha = iQuantidadeDeGraficos;
      if (iQuantidadeDeGraficos < iGraficosPorColuna * iGraficosPorLinha) {
        iGraficosPorColuna -= 1;
      }
    }
    if (iQuantidadeDeGraficos <= iGraficosPorColuna) {
      iGraficosPorColuna = 1;
    }
    if (iQuantidadeDeGraficos < iGraficosPorColuna * iGraficosPorLinha) {
      iGraficosPorLinha -= 1;
    }

    dGraficoLargura = (dScreenWidth - (iGraficosPorLinha * dWrapEspacamento)) / iGraficosPorLinha;
    dGraficoAltura = (dScreenHeight - (dBarrasHV + iGraficosPorColuna * dWrapEspacamento)) / iGraficosPorColuna;

    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    Color iconBarColor = isDarkTheme ? FCoresBasicas().branco : FCoresBasicas().preto;
    Color removeIconColor = FCoresBasicas().vermelhoExcluir;

    return FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SafeArea(
              top: true,
              child: Scaffold(
                appBar: AppBar(
                  // leading: IconButton(
                  //   tooltip: "Fecha a janela",
                  //   icon: Icon(Icons.arrow_back_rounded, color: FCoresBasicas().branco),
                  //   onPressed: () {
                  //     Navigator.of(context).pop();
                  //   },
                  // ),
                  title: Text(
                    oPainelPrincipal.sTitulo,
                    style: TextStyle(fontWeight: FontWeight.bold, color: FCoresBasicas().branco),
                  ),
                  centerTitle: true,
                  backgroundColor: FCoresBasicas().azulEscuro,
                  // leading: IconButton(
                  //   tooltip: "Fecha a janela",
                  //   icon: Icon(Icons.arrow_back_rounded, color: FCoresBasicas().branco),
                  //   onPressed: () {
                  //     if (FConfig().bJanelaTravar) {
                  //       FConfig().bJanelaTravar = false;
                  //       return;
                  //     }
                  //     FNavigator().pop();
                  //   },
                  // ),
                  actions: [
                    // Visibility(
                    //   visible: FConfig().contarPaginas() > 3,
                    //   child: IconButton(
                    //       tooltip: "Retorna para uma janela anterior específica",
                    //       icon: Icon(Icons.arrow_circle_left_outlined, color: FCoresBasicas().branco),
                    //       onPressed: () {
                    //         if (FConfig().bJanelaTravar) {
                    //           return;
                    //         }
                    //         FConfig().removerVariasPaginas();
                    //       }),
                    // ),
                    Visibility(
                      visible: oPainelPrincipal.listaPaineis!.length < 6,
                      child: IconButton(
                        tooltip: "Adicionar um novo painel",
                        icon: Icon(Icons.add_rounded, color: FCoresBasicas().branco),
                        onPressed: () async {
                          // if (FConfig().bJanelaTravar) {
                          //   return;
                          // }
                          // FConfig().bJanelaTravar = true;

                          List<String> lGraficoOpcoes = [
                            "Linhas",
                            "Barras",
                            "Pizza",
                            "Dispersão",
                            "Radar",
                          ];

                          Future<int?> futureValue = await FGraficos.dialogMultiploOkCancelarInt(context, lGraficoOpcoes);
                          int? iRetorno = await futureValue;

                          if (iRetorno == -1) {
                            return;
                          }

                          oPainelPrincipal.listaPaineis!.add(FPaineisRPainel(iTipoGrafico: iRetorno));

                          setState(() {});
                          // FConfig().bJanelaTravar = false;
                        },
                      ),
                    ),
                    // Tooltip(
                    //   message: "Exibe o menu de opções individuais",
                    //   child: InkWell(
                    //     customBorder: const CircleBorder(),
                    //     onTapDown: (details) => tapPosition = FFields().getTapPosition(details),
                    //     onTap: () async {
                    //       if (FConfig().bJanelaTravar) {
                    //         return;
                    //       }
                    //     },
                    //     child: Padding(
                    //       padding: edgeIAll5,
                    //       child: Icon(Icons.more_vert_rounded, color: FCoresBasicas().branco),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                body: Card(
                  color: FCoresBasicas().cinza.darken(5),
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: dWrapEspacamento,
                      alignment: WrapAlignment.center,
                      children: oPainelPrincipal.listaPaineis!.asMap().entries.map((entry) {
                        int iIndex = entry.key;
                        return GestureDetector(
                          // onDoubleTap: () async {
                          //   await Navigator.push(context, MaterialPageRoute(builder: (context) => FGraficos.controllerGrafico(oPainelPrincipal.listaPaineis![iIndex])));
                          // },
                          child: Stack(children: [
                            SizedBox(
                              width: dGraficoLargura,
                              height: dGraficoAltura,
                              child: FGraficos.controllerGrafico(oPainelPrincipal.listaPaineis![iIndex]),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Tooltip(
                                    message: "Configurações",
                                    child: IconButton(
                                      icon: Icon(Icons.settings, color: iconBarColor),
                                      onPressed: () {
                                        // func();    // TRATAR
                                      },
                                    ),
                                  ),
                                  Tooltip(
                                    message: "Remover gráfico",
                                    child: IconButton(
                                      icon: Icon(Icons.remove_circle, color: removeIconColor),
                                      onPressed: () {
                                        setState(() {
                                          if (oPainelPrincipal.listaPaineis!.isNotEmpty) {
                                            oPainelPrincipal.listaPaineis!.removeAt(iIndex);
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  PopupMenuButton<int>(
                                    tooltip: "Adicionar campo",
                                    icon: Icon(Icons.add_box, color: iconBarColor),
                                    onSelected: (int campoX) {
                                      mostrarOpcoesDeCampo(context);
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                                      const PopupMenuItem<int>(
                                        value: 1,
                                        child: Text('Campo 1'),
                                      ),
                                      const PopupMenuItem<int>(
                                        value: 2,
                                        child: Text('Campo 2'),
                                      ),
                                      const PopupMenuItem<int>(
                                        value: 3,
                                        child: Text('Campo 3'),
                                      ),
                                    ],
                                  ),
                                  Tooltip(
                                    message: "Grade",
                                    child: IconButton(
                                      icon: Icon(Icons.grid_on_sharp, color: iconBarColor),
                                      onPressed: () {
                                        // func();    // TRATAR
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const Center();
          }
        });
  }
}
