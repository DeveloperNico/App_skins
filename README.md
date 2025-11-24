# avaliacao_3
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

yaml

name: avaliacao_3
description: "A new Flutter project."
# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: ^3.9.2

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  firebase_core: ^2.10.0
  flutter:
    sdk: flutter
  http: ^1.2.0

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.8
  firebase_auth: ^4.16.0
  cloud_firestore: ^4.17.5

dev_dependencies:
  flutter_test:
    sdk: flutter

  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^5.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  # assets:

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/to/resolution-aware-images

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/to/asset-from-package

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/to/font-from-package


---

## 📱 Como Executar o Projeto
```bash
# Clonar o repositório
git clone https://github.com/SEU_USUARIO/seu_projeto.git

# Acessar a pasta
cd seu_projeto

# Instalar dependências
flutter pub get

# Executar no emulador ou dispositivo físico
flutter run
📦 Geração do APK
A geração do APK foi realizada com o comando:

bash
Copiar código
flutter build apk --release
O arquivo final foi gerado em:

swift
Copiar código
build/app/outputs/flutter-apk/app-release.apk
O APK foi instalado manualmente em um smartphone Android para testes.

📸 Imagens do Aplicativo
Aqui você pode adicionar prints, por exemplo:

Tela inicial

Lista de skins

Detalhes da skin

Carrinho

Confirmação de compra

(Basta arrastar as imagens para o repositório ou colar links.)

🧠 Decisões de Implementação
Criação de widgets reutilizáveis para cards de skins

Organização das pastas para facilitar manutenção

Dados das skins estruturados em lista mockada ou JSON interno

Navegação utilizando Navigator.push() e Navigator.pop()

📚 Dificuldades Encontradas
Ajustar o layout responsivo para telas menores

Organizar os dados e estrutura do projeto

Aprender a navegação do Flutter

Exportar o APK corretamente

✔️ Resultados Obtidos
Aplicativo funcional e intuitivo

Interface simples e moderna

Experiência prática completa com Flutter

Sucesso na exportação e teste do APK no dispositivo físico

🧩 Possíveis Melhorias Futuras
Integração com API real de skins

Sistema de login

Histórico de compras

Banco de dados local (Hive ou Sqflite)

Adição de animações personalizadas

👨‍💻 Autor
Nicolas
Estudante de Análise e Desenvolvimento de Sistemas – 3º Semestre

🙏 Agradecimentos
Projeto desenvolvido para fins de estudo e prática em Flutter.
Deus abençoe 🙏

yaml
Copiar código

---

Se quiser, posso adaptar o README **exatamente para o seu projeto**, com nome do app, prints, descrição real das telas e até adicionar GIFs.  
É só me enviar essas informações quando quiser!  
Deus abençoe 🙏