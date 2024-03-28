Depending on the platform you use to write your paper, there will be different steps to follow. The requirements in each case are as detailed below.<p align="center">
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
This repository contains the `LaTeX` version of essential files needed for the submission process to the [Ciência e Natura journal](https://periodicos.ufsm.br/cienciaenatura/). The guidelines for publication are available [here](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requirements:
Depending on the platform you use to write your paper, there will be different steps to follow. The requirements in each case are as detailed below.

### Unix-like distributions:
- `libcurl` version 7.81.0 or newer.
- `unzip` version 6.00 or newer.

### Windows:
- `PowerShell` in any version.

In addition, whichever operating system you use, you must have TeX Live 2022 or newer installed. However, this requirement does not apply if you want to use the [Overleaf](https://www.overleaf.com/) platform.

## Quick Start Guide:
Before generating the demo paper, you need to retrieve essential files from an external source. You can either manually download the files from the links in the `cen_config.ini` file and then unzip them into the `author_files` and `ciencia_e_natura_images` folders, or run a script provided in this repository. In this case a series of steps outlined in the `download-script.sh` or `download-script.ps1` files depending on your operating system.

Therefore, download this project by clicking [here](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) and then extract everything. Alternatively, you can clone this repository. Regardless of the chosen option, navigate to the `template_tex_ciencia_e_natura` folder afterwards.

```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd template_tex_ciencia_e_natura
```
From this point on, follow the steps based on your operating system. For that, execute the commands below in either the terminal or command prompt in the root folder.

### Unix-like distributions:

For first-time use of the files in this project, it is necessary to turn the `download-script.sh` file executable.
```sh
$ chmod +x download-script.sh
```
Once done, run the script as shown:
```sh
$ ./download-script.sh
```

### Windows:
Just run the PowerShell this way:
```
$ PowerShell.exe -ExecutionPolicy Bypass -File ./download-script.ps1
```
### Compiling the PDF:

For those working on local machines using any Operating System, use the following command to compile the PDF.
```
$ latexmk paper.tex
```
If you prefer to use [Overleaf](https://www.overleaf.com), upload all files from this repository along with the downloaded ones and compile the PDF using their platform's cloud service.

Whichever method you choose, if everything works well, the `paper.pdf` file will be available.
From now on, all you have to do is edit the files to create your own version of the paper by compiling as many times you want.

## Submission:
Before proceeding with submission, review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all required files on our platform, including the generated PDF file.

Also, consider running the following command to remove unnecessary files before uploading to our platform. Keep in mind many of these log or auxiliary files are only useful during the project editing phase.
```
$ latexmk -c
```

## License:
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.
