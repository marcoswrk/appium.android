# Automação mobile com Appium

Projeto de estudo criado para praticar automação de testes em um aplicativo Android usando Ruby, Cucumber e Appium.

## Tecnologias

- Ruby;
- Cucumber 8;
- Appium Ruby Client 12;
- Selenium WebDriver;
- RSpec Matchers;
- Faker;
- Android Studio e Gradle, para o aplicativo usado nos testes.

## Cenários cobertos

- Cadastro de produto;
- Edição de produto;
- Exclusão de produto;
- Diminuição da quantidade de um produto.

## Pré-requisitos

- Ruby e Bundler;
- Android Studio;
- Android SDK e um emulador Android;
- Appium Server;
- Appium driver `uiautomator2`;
- ADB disponível no `PATH`.


## Estrutura

```text
app/                        #Aplicativo Android usado como alvo dos testes
features/android/           #Objetos de tela
features/assertion/         #Asserções dos fluxos
features/bdd/               #Cenários escritos em Gherkin
features/step_definitions/  #Implementação dos passos
features/support/           #Configuração, hooks, dados e utilitários
config/cucumber.yml         #Perfis de execução do Cucumber
Gemfile                     #Dependências Ruby
product_registration*.apk   #APKs usados na execução
```