#!/bin/bash

authorFolder='author_files'
CENFolder='ciencia_e_natura_images'
filesLinkAddress='https://www.dropbox.com/scl/fi/2noylxmxxsa4uf0hza130/cen-files.zip?rlkey=cvc1e0acppnj3c6c1srn0duki&dl=1'

if [ ! -d "${CENFolder}" ] || [ ! -d "${authorFolder}" ]; then
  if [ ! -d "${CENFolder}" ]; then
    mkdir "${CENFolder}"
  fi
  if [ ! -d "${authorFolder}" ]; then
    mkdir "${authorFolder}"
  fi
  curl -L -o cen-files.zip ${filesLinkAddress}
  unzip cen-files.zip
fi

if ! [ -f "foobar.f90" ]; then
cat << EOF > foobar.f90
  PROGRAM FOOBAR
    IMPLICIT NONE
  
    INTEGER :: N, I
    CHARACTER(LEN=9) :: MESSAGE
  
    WRITE(*, *) 'Enter a positive integer:'
    READ(*, *) N
  
    DO I = 1, N
       IF (MOD(I, 3) == 0 .AND. MOD(I, 5) == 0) THEN
          MESSAGE = 'FOOBAR'
       ELSEIF (MOD(I, 3) == 0) THEN
          MESSAGE = 'FOO'
       ELSEIF (MOD(I, 5) == 0) THEN
          MESSAGE = 'BAR'
       ELSE
          WRITE(*, *) I
          CONTINUE
       ENDIF
  
       WRITE(*, *) MESSAGE
    END DO
  
  END PROGRAM FOOBAR
EOF
fi

cleanup_files() {
    rm -rf *.blg *.log *.spl *.aux *.out *.bbl foobar.f90
}

pdflatex paper.tex
bibtex paper
pdflatex paper.tex
pdflatex paper.tex

cleanup_files
