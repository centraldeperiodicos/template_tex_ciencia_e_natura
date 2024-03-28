<p align="center">
   <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/2y3obtp1dcg0h0ub3mab6/logo-ciencia-e-natura.jpg?rlkey=77vnaywv3t5oydoiqclnfu736&dl=0" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/lobophf/conway-game-of-life.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/centraldeperiodicos/template_tex_ciencia_e_natura">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#sobre">Sobre</a>&nbsp;&nbsp;|&nbsp;
    <a href="#requerementos">Requerimentos</a>&nbsp;&nbsp;|&nbsp;
    <a href="#guia de início rapido">Guia de início rápido</a>&nbsp;&nbsp;|&nbsp;
    <a href="#submissão">Submissão</a>&nbsp;&nbsp;|&nbsp;
    <a href="#licença">Licença</a>
    <h2 align="center">Ciência e Natura - Repositório LaTeX</h2>
    <h4 align="center">Universidade Federal de Santa Maria, Campus Sede, Editora Central de Periódicos da UFSM</h4>
</p>

## Sobre:
Este repositório contém a versão LaTex de arquivos essenciais para o processo de submissão ao [periódico da Ciência e Natura](https://periodicos.ufsm.br/cienciaenatura/). As diretrizes completas para publicação estão disponíveis [aqui](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requerimentos:
Dependendo da plataforma que usará para escrever seu artigo, haverão diferentes passos para seguir. Os requisitos em cada caso estão detalhados abaixo.

### Distribuições Unix:
- `libcurl` versão 7.81.0 ou mais recente.
- `unzip` versão 6.00 ou mais recente.

### Windows:
- `PowerShell` em qualquer versão.

Além disso, intependentemente do sistema operação de uso, você deverá ter o TeX Live 2022 (ou mais) recente instalado. Entretanto, este requisito não se aplica se você quiser utilizar a plataforma do [Overleaf](https://www.overleaf.com/).

## Guia de início rápido:
Antes de gerar o artigo de demonstração, você precisa obter alguns arquivos essenciais de uma fonte externa. Você pode tanto baixar manualmente os arquivos a partir de links no arquivo `cen_config.ini` e então extraí-los nas pastas `author_files` e `ciencia_e_natura_images`, ou rodar um script disponibilizado neste repositório. Neste caso, há uma série de passos detalhados nos arquivos `download-script.sh` ou `download-script.ps1`, que dependem do seu sistema operacional para execução. 

Para isto, baixe este projeto clicando [aqui](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) e extraia tudo. Alternativamente, você pode clonar este repositório. Qualquer que seja a opção escolhida, navegue até a pasta `template_tex_ciencia_e_natura` depois disso.

```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd template_tex_ciencia_e_natura
```
Deste ponto em diante, siga os passos adequados para seu sistema operacional. Para isto, execute os comandos abaixo no terminal ou no prompt dentro da pasta raiz.

### Distribuições Unix:

Para primeiro uso desse projeto, é necessário tornar o arquivo `download-script.sh` executável.

```sh
$ chmod +x download-script.sh
```
Uma vez feito, execute o script como mostrado:
```sh
$ ./download-script.sh
```

### Windows:
Apenas execute o PowerShell dessa forma:
```
$ PowerShell.exe -ExecutionPolicy Bypass -File ./download-script.ps1
```
### Compilando o PDF:
Para aqueles que trabalham em máquinas locais utilizando qualquer sistema operacional, utilize os seguintes comands para compilar o PDF.
```
$ latexmk paper.tex
```
Se você prefirir, utilizar o [Overleaf](https://www.overleaf.com), faça o upload de todos os arquivos, inclusive os baixados pelos scripts e compile o PDF usando seu serviço de plataforma em nuvem.

Qualquer que seja o método escolhido, se tudo ocorrer bem, o arquivo `paper.pdf` aparecerá.
A partir daqui, tudo que precisará fazer é editar os arquivos para criar sua própria versão do artigo ao compilar quantas vezes você precisar.

## Submissão:
Antes de prosseguir com a submissão, revise nossa [Lista de Verificação de Preparação para Submissão](https://periodicos.ufsm.br/cienciaenatura/about/submissions) e forneça todos os arquivos necessários em nossa plataforma, incluindo o arquivo PDF gerado.

Também considere executar o comando a seguir para remover arquivos desnecessários antes de enviar os arquivos para nossa plataforma. Tenha em mende que muitos desses arquivos de log ou arquivos auxilires são úteis somente na fase de edição do projeto.

```
$ latexmk -c
```
## License:
Este projeto está licenciado sob a [Licença Internacional Creative Commons Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), conforme encontrado no arquivo [LICENSE](./LICENSE).

