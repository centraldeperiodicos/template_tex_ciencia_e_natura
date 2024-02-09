<p align="center">
   <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/2y3obtp1dcg0h0ub3mab6/logo-ciencia-e-natura.jpg?rlkey=77vnaywv3t5oydoiqclnfu736&dl=0" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/lobophf/conway-game-of-life.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/centraldeperiodicos/template_tex_ciencia_e_natura">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#about">About</a>&nbsp;&nbsp;|&nbsp;
    <a href="#requirements">Requirements</a>&nbsp;&nbsp;|&nbsp;
    <a href="#quick-start-guide">Quick Start Guide</a>&nbsp;&nbsp;|&nbsp;
    <a href="#submission">Submission</a>&nbsp;&nbsp;|&nbsp;
    <a href="#license">License</a>	
    <h2 align="center">Ciência e Natura - LaTeX Repository</h2>
    <h4 align="center">Federal University of Santa Maria, Main Campus Central Publisher of UFSM Journals</h4>
</p>

## About:
This repository contains essential files for the submission process to the [Ciência e Natura journal](https://periodicos.ufsm.br/cienciaenatura/). Complete guidelines for publication are available [here](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requirements:
- This project is designed to work only on Linux-like machines.
- Ensure you have `pdfTeX` installed.
- You must have the `unzip package` installed.

## Quick Start Guide:
To generate a PDF with a demonstration paper, it is necessary to follow some steps to be performed by the `script.sh` file. To do this, you need to obtain the files from this project and execute the script so that it downloads some images and compiles a PDF file.

Therefore, first download the files by clicking [here](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) and then extract everything. Alternatively, clone this repository. Regardless of the chosen option, navigate to the `cnc-paper` folder afterwards.

```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd cnc-paper
```
For first-time use of the files in this project, making the `script.sh` executable is necessary.
```sh
$ chmod +x script.sh
```
Once you've done that, compile the PDF.
```sh
$ ./script.sh
```
If everything went well, the `paper.pdf` file will appear in the root directory.<br>

> [!NOTE]
>This script downloads a zipped file from a third-party platform, containing images essential to the journal, as well as others that are part of the paper for demonstration purposes. Feel free to change whatever is needed to create your own version. The `paper.tex` file provides additional instructions for this.

## Submission:
Before proceeding with submission, review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all necessary files on our platform, including the generated PDF.

## License:
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.

