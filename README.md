# Avaliacao 3
Esse reletório é para a terceira avaliação da metéria de Desenvolvimento Mobile.


# 🎮 Aplicativo de Compra de Skins de Valorant
Relatório de Implementação – Desenvolvido em Flutter

## 📌 Sobre o Projeto
Este projeto consiste em um aplicativo desenvolvido em **Flutter**, com o objetivo de simular a compra de skins do jogo Valorant.
O foco foi aplicar conceitos de interfaces modernas, navegação entre telas, controle de estado, exibição de dados internos (mockados) e implementação completa de um **CRUD (Create, Read, Update, Delete)** para gerenciamento das skins.
Além disso, o aplicativo conta com **integração com o Firebase**, permitindo armazenamento, sincronização e manipulação de dados em tempo real, tornando o projeto mais robusto e próximo de uma aplicação real do mercado.
---

## 🚀 Funcionalidades Implementadas
- 🙍🏾‍♂️ Login simplificado
- 📜 Lista de skins disponíveis  
- 🖼️ Exibição de imagem, nome e preço de cada skin  
- 🛒 Carrinho de compras    
- 🔄 Fluxo de compra simulado  
- 📱 Layout responsivo  

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
- **Flutter**  
- **Dart**  
- Arquitetura utilizando `setState()` (pode ajustar se usou Provider ou outro gerenciador)  
- IDE: **VS Code**  
- Testado em dispositivo físico Android via APK exportado  

---

## 📁 Estrutura do Projeto
```
lib/
├── api/
│   └── valorant_api.dart
├── pages/
│   ├── carrinho_page.dart
│   ├── gestao_page.dart
│   ├── home_page.dart
│   ├── login_page.dart
│   └── produto_page.dart
├── firebase_options.dart
└── main.dart
```

---

pubspec.yaml

name: avaliacao_3
description: "A new Flutter project."

version: 1.0.0+1

environment:
  sdk: ^3.9.2

dependencies:
  firebase_core: ^2.10.0
  flutter:
    sdk: flutter
  http: ^1.2.0

  cupertino_icons: ^1.0.8
  firebase_auth: ^4.16.0
  cloud_firestore: ^4.17.5

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true


---

## 📱 Como Executar o Projeto
```bash
# Clonar o repositório
git clone https://github.com/DeveloperNico/App_skins.git

# Acessar a pasta
cd avaliacao_3

# Instalar dependências
flutter pub get

# Executar no emulador ou dispositivo físico
flutter run


🧠 Decisões de Implementação
Criação de widgets reutilizáveis para cards de skins

Organização das pastas para facilitar manutenção

Dados das skins estruturados em lista mockada


📚 Dificuldades Encontradas
Ajustar o layout responsivo para telas menores

Organizar a estrutura com o firebase

Aprender a navegação do Flutter

Exportar o APK corretamente

✔️ Resultados Obtidos
Aplicativo funcional e intuitivo

Interface simples e moderna

Experiência prática completa com Flutter

Sucesso na exportação e teste do APK no dispositivo físico

🧩 Melhorias Futuras
Histórico de compras

Adição de animações personalizadas

Layout mais moderno

👨‍💻 Autor
Nicolas Duarte Silva
Estudante de Análise e Desenvolvimento de Sistemas – 3º Semestre

🙏 Agradecimentos
Projeto desenvolvido para fins de estudo e prática em Flutter.
Agradeço ao professor **Vinicius Almeida** pelo suporte e pelas orientações que contribuíram diretamente para o desenvolvimento deste projeto.
Deus abençoe 🙏

---