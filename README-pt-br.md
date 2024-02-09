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
    <a href="#guia de início rapido">Guia de Início Rápido</a>&nbsp;&nbsp;|&nbsp;
    <a href="#submissão">Submissão</a>&nbsp;&nbsp;|&nbsp;
    <a href="#licença">Licença</a>
    <h2 align="center">Ciência e Natura - Repositorio LaTeX</h2>
    <h4 align="center">Universidade Federal de Santa Maria, Campus Sede, Editora Central de Periódicos da UFSM</h4>
</p>

## Sobre:
Este repositório contém arquivos essenciais para o processo de submissão ao [periódico Ciência e Natura](https://periodicos.ufsm.br/cienciaenatura/). Diretrizes completas para publicação estão disponíveis [aqui](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requerementos:
- Este projeto foi projetado para funcionar apenas em máquinas com distros Linux.
- Certifique-se de ter o `pdfTeX` instalado.
- Você deve ter o `unzip package` instalado.

## Guia de Início Rápido:
Para gerar um PDF com um artigo de demonstração, é necessário seguir algums passos a serem realizados pelo arquivo `script.sh`. Para realizar isso é necessário obter os arquivos desse projeto e executar o script para que este faça o download de algumas imagens e compile um arquivo PDF.

Sendo assim, primeiro baixe os arquivos clicando [aqui](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) e, em seguida, extraia tudo. Alternativamente, clone este repositório. Independentemente da opção escolhida, navegue até a pasta `cnc-paper` depois.

```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd cnc-paper
```
Para usar os arquivos neste projeto pela primeira vez, é necessário tornar o `script.sh` executável.
```sh
$ chmod +x script.sh
```
Depois de feito isso, compile o PDF.
```sh
$ ./script.sh
```
Se tudo correu bem, o arquivo `paper.pdf` aparecerá no diretório raiz.<br>

> [!NOTE]
>Este script faz o download de um arquivo zipado de uma plataforma de terceiros, contendo imagens essenciais para o periódico, além de outras que fazem parte do artigo para fins de demonstração. Sinta-se à vontade para fazer as alterações necessárias para criar sua própria versão. O arquivo `paper.tex` fornece instruções adicionais para isso.

## Submissão:
Antes de prosseguir com a submissão, revise nossa [Lista de Verificação de Preparação para Submissão]((https://periodicos.ufsm.br/cienciaenatura/about/submissions) ) e forneça todos os arquivos necessários em nossa plataforma, incluindo o PDF gerado.

## License:
Este projeto está licenciado sob a [Licença Internacional Creative Commons Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), conforme encontrado no arquivo [LICENSE](./LICENSE).
