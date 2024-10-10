<p align="center">
   <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/mfizrve2uyx9hu8ci8ldf/ciencia_e_natura.png?rlkey=td68joh9ji0hmqynz1jtiueio&dl=0" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/centraldeperiodicos/template_tex_ciencia_e_natura.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/centraldeperiodicos/template_tex_ciencia_e_natura">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#sobre">Sobre</a>&nbsp;&nbsp;|&nbsp;
    <a href="#paraautores">Para autores</a>&nbsp;&nbsp;|&nbsp;
    <a href="#contribuição">Contribuição</a>&nbsp;&nbsp;|&nbsp;
    <a href="#licença">Licença</a>	
    <h2 align="center">Ciência e Natura - Repositório LaTeX</h2>
    <h4 align="center">Universidade Federal de Santa Maria, Campus Sede, Editora Central de Periódicos da UFSM</h4>
</p>

## Sobre:
Este repositório contém os arquivos LaTeX essenciais necessários para o processo de submissão ao [periódico da Ciência e Natura](https://periodicos.ufsm.br/cienciaenatura/).

## Para&nbsp;autores:
Se você planeja enviar um artigo para nossa revista, por favor, leia as [diretrizes](https://periodicos.ufsm.br/cienciaenatura/about/submissions) e baixe os arquivos essenciais clicando no botão a seguir:

<p align="center">
   <a href="https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/releases/download/v-005/main-2024-005.zip">
      <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/11m3n0mei8yjrqjpa030s/download_button.svg?rlkey=bckpldci098xfvxbowr64f3bv&dl=0" height="40px">
   </a>
   <a href="https://www.overleaf.com/read/chyyfqqyjhyv#3ce81f">
      <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/8oiup9nk3lmd0u3rpzk7n/overleafCeN.png?rlkey=ejw5tkf4vlxe16b5la5avcdkr&st=7r3q1d6p&dl=0" height="40px">
   </a>
</p> 

### Requisitos:
Se você deseja criar seu artigo em sua máquina local, deve ter o `TeX Live 2022` ou superior instalado. No entanto, este requisito não se aplica se você for usar a plataforma [Overleaf](https://www.overleaf.com/).

### Compilando o PDF:
Para compilar o PDF em máquinas locais em qualquer sistema operacional, use o seguinte comando. Isso pode ser feito diretamente no terminal/prompt de comando ou configurando seu editor LaTeX adequadamente.

```
$ latexmk -pdf paper.tex
```
Além disso, exclusivamente para o ambiente Windows, há um script Batch projetado para compilar o PDF. Para executá-lo, basta clicar duas vezes no arquivo `compile_pdf.bat`.

Se você preferir usar a [Overleaf](https://www.overleaf.com/), carregue todos os arquivos necessários e compila o PDF usando o serviço cloud da plataforma. Com qualquer um dos métodos, se tudo funcionar corretamente, o arquivo `paper.pdf` estará disponível. A partir deste ponto, tudo o que você precisa fazer é editar os arquivos para criar sua versão do artigo, compilando-o tantas vezes quanto necessário.

## Submissão:
Antes de iniciar a submissão, por favor, consulte nossa [Lista de Verificação de Preparação para Submissão](https://periodicos.ufsm.br/cienciaenatura/about/submissions) e forneça todos os arquivos necessários em nossa plataforma, incluindo o arquivo PDF gerado.
Considere executar o seguinte comando para remover arquivos desnecessários antes de carregar na nossa plataforma, pois muitos desses arquivos de log ou auxiliares são úteis apenas durante a fase de edição:

```
$ latexmk -c
```
## Contribuição:
Nós apreciamos todos os tipos de contribuições! Se você quiser melhorar a documentação ou corrigir bugs, sinta-se à vontade para abrir um pull request no branch de desenvolvimento. Você também pode consultar nossa [página de contribuições](CONTRIBUITION.md) para obter mais informações.

Se você planeja contribuir adicionando novos recursos ou alterando o template, por favor, abra uma issue e discuta conosco antes. Enviar pull requests deste tipo sem discussão prévia pode gerar rejeição se decidirmos levar o projeto em uma direção diferente da qual você pode estar ciente.

## Licença:
Este projeto está licenciado sob a [Licença Internacional Creative Commons Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), conforme encontrado no arquivo [LICENSE](./LICENSE).

