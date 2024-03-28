#!/bin/bash
source cen_config.ini
source cen_scripts/fileDownloader.sh

downloadFile "$author_url_files" "author_files"
downloadFile "$ciencia_e_natura_url_files" "ciencia_e_natura_images"

cleanup_files() {
  rm -rf *.blg *.log *.spl *.aux *.out *.bbl
}

pdflatex paper.tex
bibtex paper
pdflatex paper.tex
pdflatex paper.tex

cleanup_files
