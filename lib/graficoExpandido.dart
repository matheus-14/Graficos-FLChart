// ignore_for_file: file_names

// import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'construirGraficos.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class GraficoExpandido extends ConsumerStatefulWidget {
  const GraficoExpandido(this.chartIndex, {super.key});

  final int chartIndex;

  @override
  ConsumerState<GraficoExpandido> createState() => _GraficoExpandidoState();
}

class _GraficoExpandidoState extends ConsumerState<GraficoExpandido> {
  final formKey = GlobalKey<FormState>();
  Future<bool>? _future;

  Offset tapPosition = Offset.zero;
  String sTituloFinal = "";

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // FConfig().sScreenInfo = "";

    sTituloFinal = "Título final";

    _future = myFuture();
  }

  Future<bool> myFuture() async {
    return true;
  }

  Widget buildChart(int index) {
    List<FlSpot> listaPontos = const [
      FlSpot(0, 5),
      FlSpot(1, 3),
      FlSpot(2, 7),
      FlSpot(3, 1.5),
      FlSpot(4, 5.5),
      FlSpot(5, 3.5),
    ];

    return ConstruirGraficos().controllerGrafico(index, listaPontos, const FlGridData(show: true));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // ref.watch(refreshSNPGraficoExpandidoGeral);
          return SafeArea(
            key: formKey,
            top: true,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.grey,
                centerTitle: true,
                title: Text(sTituloFinal),
                leading: IconButton(
                  tooltip: "Fecha a janela",
                  icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                actions: const [
                  SizedBox(
                      height: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // Visibility(
                          //   visible: oIAED.eCadastro && oIAED.incluir && FConfig().bOnline,
                          //   child: IconButton(
                          //       icon: Icon(Icons.add_rounded, color: Colors.white),
                          //       onPressed: () async {
                          //         if (FConfig().bJanelaTravar) {
                          //           return;
                          //         }
                          //         FConfig().bJanelaTravar = true;
                          //         if (!oIAED.eCadastro) {
                          //           // var retorno = await Navigator.push(
                          //           //     context,
                          //           //     MaterialPageRoute(
                          //           //         builder: (context) => Operacao(
                          //           //               sOpcaoIAD: "I",
                          //           //               menuSelecionado: widget.menuSelecionado,
                          //           //               objeto: FClasses.retornarClasseOperacao(widget.menuSelecionado.ali_mn0!),
                          //           //             )));
                          //           // if (retorno is bool && retorno) {
                          //           //   pagingController.refresh();
                          //           // }
                          //         } else {
                          //           if (!await verificarConexaoCadastro(refV: ref)) {
                          //             return;
                          //           }
                          //           var retorno = await Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) => DetalhesRegistrosEdicao(
                          //                         sOpcaoIAD: "I",
                          //                         menuSelecionado: widget.oMenu,
                          //                         objeto: FClasses.retornarClasse(widget.oMenu.ali_mn0!, bIgnorarDefaultValue: false, bIgnorarNullValue: false),
                          //                         sTituloOpcional: "${(widget.tituloOpcional != "" ? "${widget.tituloOpcional}: " : "")}${widget.oMenu.des_mn0!}",
                          //                       )));
                          //           if (retorno is bool && retorno) {
                          //             pagingController.refresh();
                          //           }
                          //         }
                          //         FConfig().bJanelaTravar = false;
                          //       }),
                          // ),
                          // Visibility(
                          //   visible: FConfig().contarPaginas() > 3,
                          //   child: IconButton(
                          //       tooltip: "Retorna para uma janela anterior específica",
                          //       icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white),
                          //       onPressed: () {
                          //         if (FConfig().bJanelaTravar) {
                          //           return;
                          //         }
                          //         FConfig().removerVariasPaginas();
                          //       }),
                          // ),
                          // Visibility(
                          //   visible: !bNaoEnviados.opcao,
                          //   child: IconButton(
                          //     tooltip: "${bOpcoes.opcao ? "Oculta" : "Exibe"} a lista de opções",
                          //     icon: bOpcoes.opcao ? Icon(Icons.layers_rounded, color: Colors.white) : Icon(Icons.layers_clear_rounded, color: Colors.white),
                          //     onPressed: () async {
                          //       if (FConfig().bJanelaTravar) {
                          //         return;
                          //       }
                          //       bOpcoes.opcao = !bOpcoes.opcao;
                          //       await FPropriedadeCache.salvarPropriedade("${FGeral.idmParcial()}_LISTA_OPCOES_CFG${widget.oMenu.noi_mn0}", bOpcoes.opcao.toString().toUpperCase());
                          //       setState(() {});
                          //     },
                          //   ),
                          // ),
                          // IconButton(
                          //   tooltip: "${bTeclado.opcao ? "Oculta" : "Exibe"} o teclado virtual",
                          //   icon: bTeclado.opcao ? Icon(Icons.grid_on_outlined, color: Colors.white) : Icon(Icons.grid_off_outlined, color: Colors.white),
                          //   onPressed: () async {
                          //     bTeclado.opcao = !bTeclado.opcao;
                          //     await FPropriedadeCache.salvarPropriedade("${FGeral.idmParcial()}_TECLADO_GraficoExpandido", bTeclado.opcao.toString().toUpperCase());
                          //     setState(() {});
                          //     ref.read(refreshSNPGraficoExpandidoGeral.notifier).refreshSetar("${DateTime.now()}");
                          //   },
                          // ),
                          // Visibility(
                          //   visible: !oIAED.eCadastro && (!FConfig().bOnline || bNaoEnviados.opcao) && listaNaoEnviados.isNotEmpty,
                          //   child: GestureDetector(
                          //     onTap: () async {
                          //       if (!(await FGeral.dialogOkCancelar("Confirmar a exclusão de todas as operações?"))) {
                          //         return;
                          //       }
                          //       listaNaoEnviados.clear();
                          //       await FOperacoesGerais.listaNaoEnviadosSalvar(widget.menuSelecionado.noi_mn0!, listaOpe: listaNaoEnviados);
                          //       setState(() {});
                          //     },
                          //     child: FConstantes.boxIcone(FCoresBasicas().vermelhoExcluir, icone: Icons.delete_outline_rounded),
                          //   ),
                          // ),
                          // Visibility(
                          //   visible: (!bDragEnabled.opcao && !bNaoEnviados.opcao) || (bNaoEnviados.opcao && listaNaoEnviados.isNotEmpty && oIAED.excluir),
                          //   child: GestureDetector(
                          //     onTapDown: (details) => tapPosition = FFields().getTapPosition(details),
                          //     onTap: () async {
                          //       if (FConfig().bJanelaTravar) {
                          //         return;
                          //       }
                          //       // FConfig().bJanelaTravar = true;
                          //       showMenuLongPressF1(context, ref, tapPosition);
                          //       setState(() {});
                          //     },
                          //     child: Padding(
                          //       padding: edgeIAll5,
                          //       child: Icon(Icons.more_vert_rounded, color: Colors.white),
                          //     ),
                          //   ),
                          // ),
                        ],
                      )),
                ],
              ),
              body: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: buildChart(widget.chartIndex), // Mostra o gráfico ampliado
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          // FGeral.progressShow(widget.menuSelecionado.des_mn0!);
          // return Center(child: FConstantes.widgetCircularProgress());
          return const Center();
        }
      },
    );
  }
}
