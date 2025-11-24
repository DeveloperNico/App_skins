import 'package:flutter/material.dart';
import 'produto_page.dart';
import 'carrinho_page.dart';
import 'gestao_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../api/valorant_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> skins = [];
  List<Map<String, dynamic>> skinsFiltradas = [];

  List<Map<String, dynamic>> carrinho = [];
  List<Map<String, dynamic>> pedidos = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    carregarSkinsDaAPI();
  }

  // ======================================
  // CARREGA SKINS DA API
  // ======================================
  void carregarSkinsDaAPI() async {
    try {
      final apiSkins = await fetchSkins();

      skins = apiSkins
          .map((s) {
            return {
              "nome": s["displayName"] ?? "Sem Nome",
              "preco": 199.0,
              "imagem": s["displayIcon"] ?? s["fullRender"] ?? "",
            };
          })
          .where((s) => s["imagem"] != "")
          .toList();

      // Inicialmente filtrada = igual à original
      skinsFiltradas = List.from(skins);

      setState(() {});
    } catch (e) {
      print("Erro ao carregar skins: $e");
    }
  }

  // ======================================
  // FILTRAR SKINS
  // ======================================
  void filtrarSkins(String texto) {
    setState(() {
      skinsFiltradas = skins.where((skin) {
        final nome = skin["nome"].toLowerCase();
        final busca = texto.toLowerCase();
        return nome.contains(busca);
      }).toList();
    });
  }

  // ======================================
  // Navegação
  // ======================================

  void abrirCarrinho() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CarrinhoPage(
          carrinho: carrinho,
          onFinalizar: (pedidosFinalizados) {
            setState(() {
              pedidos.addAll(pedidosFinalizados);
              carrinho.clear();
            });
          },
        ),
      ),
    );
  }

  void abrirGestao() async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GestaoPage(
          skins: List.from(skins),
          pedidos: List.from(pedidos),
        ),
      ),
    );

    if (resultado != null && mounted) {
      setState(() {
        skins = resultado['skins'];
        pedidos = resultado['pedidos'];
      });
    }
  }

  void abrirProduto(Map<String, dynamic> skin) async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProdutoPage(skin: skin),
      ),
    );

    if (resultado != null) {
      setState(() {
        carrinho.add(resultado);
      });
    }
  }

  // ======================================
  // UI
  // ======================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1923),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F2326),
        title: const Text("Valorant Skins", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: abrirCarrinho,
          ),
          IconButton(
            icon: const Icon(Icons.admin_panel_settings, color: Colors.white),
            onPressed: abrirGestao,
          ),
        ],
      ),

      body: skins.isEmpty
          ? const Center(
              child: CircularProgressIndicator(color: Colors.red),
            )
          : Column(
              children: [
                // 🔎 Barra de pesquisa
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: searchController,
                    onChanged: filtrarSkins,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Pesquisar skin...",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: const Color(0xFF1F2326),
                      prefixIcon: const Icon(Icons.search, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Color(0xFFFF4655)),
                      ),
                    ),
                  ),
                ),

                // 📌 Grade de skins filtradas
                Expanded(
                  child: skinsFiltradas.isEmpty
                      ? const Center(
                          child: Text(
                            "Nenhuma skin encontrada",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : GridView.builder(
                          padding: const EdgeInsets.all(10),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: skinsFiltradas.length,
                          itemBuilder: (context, index) {
                            final skin = skinsFiltradas[index];
                            return GestureDetector(
                              onTap: () => abrirProduto(skin),
                              child: Card(
                                color: const Color(0xFF1F2326),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: const BorderSide(
                                      color: Color(0xFFFF4655), width: 1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Image.network(
                                        skin['imagem'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      skin['nome'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'R\$ ${skin['preco']}',
                                      style: const TextStyle(
                                          color: Color(0xFFFF4655)),
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}
