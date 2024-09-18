# name-projeto-automacao

## **Introdução**
Robot Framework é um framework para automação de testes com uma sintaxe fácil, que faz a utilização de palavras-chaves (keywords) que são legíveis para humanos. As bibliotecas são implementadas utilizando Python.

### **Estrutura**

O projeto possui um diretório principal chamado **/api** e dentro desse diretório podemos trabalhar com outros dois diretórios, sendo eles: ```/resources``` e ```/tests```.

#### **resources**
Nessa estrutura vamos implementar as keywords (palavras chaves) do projeto, as quais poderão ser separadas em outras duas estruturas com o intuito de facilitar a visualização e manutenção, sendo elas:

* **_/actions_**: keywords responsáveis por realizar ações.
* **/assertions**: keywords responsáveis por validar os resultados 
que foram obtidos através de alguma ação.

Além das pastas citadas acima, ainda podemos ter nesse diretório o arquivo **base.resource**, responsável por unificar a importação dos respectivos arquivos utilizados no projeto.
* Exemplo: [base.resource](/api/resources/base.resource)

#### **tests**
Nessa estrutura teremos os arquivos de testes propriamente ditos, os quais farão a invocação das respectivas keywords.
Abaixo dessa estrutura podemos padronizar os respectivos padrões para nomenclaturas de pastas e arquivos de testes conforme necessidade.

Também podemos ter nesse diretório o arquivo **requirements.txt**, responsável por manter as dependências do projeto e suas respectivas versões caso necessário. As dependências também podem ser controladas por uma library externa caso haja necessidade.
* Exemplo: [requirements.txt](/api/requirements.txt)

> Para saber mais sobre a utilização de lib externa, consulte [aqui](https://github.com/rftrombeta/lib-python-robot-framework/blob/main/README.md).

***
### **Arquivos**
#### **Keywords**
Keywords são utilizadas para facilitar o entendimento da aplicação tornando-a legivel para toda e qualquer pessoa, não importando se o usuário tem conhecimento em linguagens de programação ou não.

Dessa forma teremos Keywords pré programadas que poderão ser utilizadas em varios testes, sendo necessário apenas montar o caso de teste seguindo a ordem de execução dos processos.

Uma keyword deve conter a seguinte estrutura:
* Bloco Settings
    * Documentation: Documentação geral do arquivo.
    * Resource: Importação dos recursos necessários.
* Bloco Keywords
    * Cada keyword pode conter a sua própria ```[Documentation]``` e receber os seus próprios ```[Arguments]``` para serem utilizados como parâmetro.
    * Uma keyword pode ou não ter um ```RETURN```.
>Exemplo: [action.resource](/api/resources/actions/action.resource)

#### **Assertions**
As assertions também são keywords e tem o mesmo funcionamento descrito acima, porém, elas podem ser utilizadas para segregar os arquivos em validadores de ações.

>Exemplo: [assertion.resource](/api/resources/assertions/assertion.resource)

#### **Tests**
São representados pelos arquivos com extensão **.robot**, devem conter a seguinte estrutura:
* Bloco Settings
    * Language: ptbr: Opcional, mas se inserido, podemos traduzir os parâmetros abaixo para português. Pode ser utilizado para representação do Gherkin (Dado, Quando, Então).
    * Name: Opcional, mas se inserido, o nome indicado aqui irá aparecer no relatório como suite de teste.
    * Documentation: Documentação geral do arquivo.
    * Resource: Importação dos recursos necessários.
* Bloco Test Cases
    * Cada Test Case pode conter a sua própria ```[Documentation]``` e suas próprias ```[Tags]```.
    * Uma keyword pode ou não ter um ```RETURN```.
>Exemplo: [test_one_example.robot](/api/tests/test_one_example.robot)
***
### **Execução**

Os testes executados localmente são chamados através de linha de comando digitados no terminal, conforme exemplo:

```robot -d ./logs tests\```

O parametro **-d** é responsável por especificar o diretório onde os resultados e relatórios de seu teste serão armazenados, ou seja, a pasta /logs.

**tests** é a pasta onde nossos cenários de testes estão alocados. Executando somente esse comando todos os arquivos de testes inclusos na pasta serão executados. Caso a execução seja necessária em apenas um arquivo, é importante passar o nome do arquivo na linha de comando.

```robot -d ./logs tests\test_one_example.robot```
***
## **Documentação**
Exemplos de utilização podem ser encontradas no site oficial do [Robot Framework](https://robotframework.org/) 

