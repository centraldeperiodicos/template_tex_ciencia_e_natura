<p align="center">
   <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/2y3obtp1dcg0h0ub3mab6/logo-ciencia-e-natura.jpg?rlkey=77vnaywv3t5oydoiqclnfu736&dl=0" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/centraldeperiodicos/template_tex_ciencia_e_natura.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/centraldeperiodicos/template_tex_ciencia_e_natura">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#about">About</a>&nbsp;&nbsp;|&nbsp;
    <a href="#forauthors">For authors</a>&nbsp;&nbsp;|&nbsp;
    <a href="#contribution">Contribution</a>&nbsp;&nbsp;|&nbsp;
    <a href="#license">License</a>	
    <h2 align="center">Ciência e Natura - LaTeX Repository</h2>
    <h4 align="center">Federal University of Santa Maria, Main Campus, Central Publishing Office at UFSM</h4>
</p>

## About:
This repository contains the `LaTeX` version of essential files needed for the submission process to the [Ciência e Natura Journal](https://periodicos.ufsm.br/cienciaenatura/).

## For&nbsp;authors:
If you are planning to submit a paper to our journal, please read the [guidelines](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and download the essential files by clicking [here](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/releases/download/2024-001/main-2024-001.zip).

### Requirements:

If you want to create your paper on your local machine, you must have `TeX Live 2022` or newer installed. However, this requirement does not apply if you are going to use the [Overleaf](https://www.overleaf.com/) platform.

### Compiling the PDF:

To compile the PDF on local machines in any operating system, simply double-click the `compile_pdf.bat` file provided in this repository. This batch file runs the necessary LaTeX command for you.

Alternatively, if you prefer to compile the PDF manually, use the following command in the terminal/command prompt or configure your LaTeX editor accordingly:
```
$ latexmk -pdf paper.tex
```
If you prefer to use [Overleaf](https://www.overleaf.com), upload all required files and compile the PDF using their cloud-based service.
With either method, if everything works correctly, the `paper.pdf` file will be available. From this point, all you have to do is edit the files to create your paper version by compiling it as many times as needed.

### Submission:
Before proceeding with submission, please review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all required files on our platform, including the generated PDF file.

Consider running the following command to remove unnecessary files before uploading to our platform, as many of these log or auxiliary files are only useful during the editing phase:

```
$ latexmk -c
```

## Contribution:

We appreciate all types of contributions! If you want to improve the documentation or fix bugs, feel free to open a pull request on the develop branch. You can also check our [contribution page](CONTRIBUITION.md) for more information.

If you plan to contribute by adding new features or changing the template, please open an issue and discuss it with us first. Sending this kind of pull requests without prior discussion may be rejected if we decide to take the project in a different direction than you might be aware of.

## License:
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.
