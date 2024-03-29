#!/bin/bash
source cen_config.ini
source cen_scripts/fileDownloader.sh

downloadFile "$author_url_files" "author_files"
downloadFile "$ciencia_e_natura_url_files" "ciencia_e_natura_images"
