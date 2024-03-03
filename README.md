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
    <h4 align="center">Federal University of Santa Maria, Main Campus, Central Publishing Office at UFSM</h4>
</p>

## About:
This repository contains essential files for the submission process to the [Ciência e Natura journal](https://periodicos.ufsm.br/cienciaenatura/). The guidelines for publication are available [here](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requirements:
Depending on your preferred operating system, there are different requirements.
### Unix-like users:
- `pdfTeX` version 3.141592653-2.6-1.40.22 or newest.
- `libcurl` version 7.81.0 or newest.
- `unzip` version 6.00 or newest.

### Windows users:
- `pdfTeX` version 3.141592653-2.6-1.40.22 or newest.
- `PowerShell` in any version.

## Quick Start Guide:
To generate a PDF containing a demo article, you need to follow a series of steps outlined in the `script.sh` or `script.ps1` file depending on your operating system. In summary, these scripts retrieves essential files from an external source and compiles the main PDF document. 

Therefore, first download the files by clicking [here](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) and then extract everything. Alternatively, you can clone this repository. Regardless of the chosen option, navigate to the `cnc-paper` folder afterwards.

```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd cnc-paper
```
Once again, for now on the folowing steps are besed on your operating system. Every command below must be executed or terminal or command prompt.
### Unix-like users:

For first-time use of the files in this project, it is necessary to turn the `script.sh` executable.
```sh
$ chmod +x script.sh
```
Once done, run the script as shown:
```sh
$ ./script.sh
```

### Windows users:
Just run the PowerShell this way:
```
$ PowerShell.exe -File ./script.ps1
```

Regardless of your operating system used, if everything works well, the `paper.pdf` file will be created in the root directory.

> [!NOTE]
>This script downloads a zipped file from a third-party platform, containing images essential to the journal, as well as others that are part of the paper for demonstration purposes. Feel free to change whatever is needed to create your own version. The `paper.tex` file provides additional instructions for this.

## Submission:
Before proceeding with submission, review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all necessary files on our platform, including the generated PDF file.

## License:
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.

