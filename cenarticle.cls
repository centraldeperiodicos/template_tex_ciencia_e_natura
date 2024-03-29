\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cenarticle}[2024/02/09 Ciencia e Natura Article Class]

% Class options
\newif\if@english
\newif\if@portuguese

\DeclareOption{english}{\@englishtrue\@portuguesefalse}
\DeclareOption{portuguese}{\@englishfalse\@portuguesetrue}

\ExecuteOptions{english} % Default option
\ProcessOptions\relax

\LoadClass[twoside, a4paper, 12pt]{article}

\RequirePackage[left=20mm,
            right=20mm,
            top=12.5mm,
            bottom=15mm,
            includehead,
            includefoot,
            ]{geometry}
%
\if@english
  \RequirePackage[english]{babel}
  \RequirePackage[natbibapa]{apacite}
\else
  \RequirePackage[portuguese]{babel}
  \RequirePackage[authoryear]{natbib}
\fi
%
\RequirePackage[default,scale=1.00]{opensans}
\RequirePackage{microtype}

\RequirePackage{xcolor}

\RequirePackage{tikz}

\RequirePackage{etoolbox}

\RequirePackage{soul}

\RequirePackage{titling}
\RequirePackage{fontawesome5}
\RequirePackage{xifthen}
\RequirePackage[hidelinks]{hyperref}

\RequirePackage{fancyhdr} % Headers and footers

\RequirePackage{indentfirst}

\RequirePackage{ragged2e}
\RequirePackage{setspace}
\RequirePackage{titlesec}

\RequirePackage{caption}

\RequirePackage[fleqn]{amsmath}
\setlength{\mathindent}{0pt}

\pagestyle{fancy} % All pages have headers and footers
\setlength{\headheight}{10mm}
\setlength{\headsep}{5mm} 
\addtolength{\topmargin}{0mm}

\titlespacing*{\section}{0pt}{9mm}{3mm}
\titleformat*{\section}{\fontsize{14pt}{0pt}\bfseries}

\titlespacing*{\subsection}{0pt}{3mm}{3mm}
\titleformat*{\subsection}{\normalsize\bfseries}
%
%----------------------------------------------------------------------------------------
%	HEADER
%----------------------------------------------------------------------------------------
%
\if@english
  \def\openacessfile{ciencia_e_natura_images/open-access.png}
\else
  \def\openacessfile{ciencia_e_natura_images/acesso-aberto.png}
\fi
%
\if@portuguese
  \def\submittedtext{Submissão}
  \def\approvedtext{Aprovação}
  \def\publishedtext{Publicação}
\else
  \def\submittedtext{Submitted}
  \def\approvedtext{Approved}
  \def\publishedtext{Published}
\fi
%
\def\extraspace{0mm}
\newcommand{\addextraspaceoncoverpage}[1]{
  \def\extraspace{#1}
}
%
\newcommand{\issn}[1]{\def\issn{#1}}
\newcommand{\volume}[1]{\def\volume{#1}}
\newcommand{\doi}[1]{\def\doi{#1}}
\newcommand{\eJournal}[1]{\def\eJournal{#1}}
\newcommand{\submitionDate}[1]{\def\submitionDate{#1}}
\newcommand{\approvalDate}[1]{\def\approvalDate{#1}}
\newcommand{\publishDate}[1]{\def\publishDate{#1}}
%
\newcommand{\cncoverheader}{
 \noindent\begin{tikzpicture}[overlay]
    \begin{scope}[shift={(0,-10mm)}]
      \node[anchor=south west,inner sep=0mm] at (0, 0) {\includegraphics[bb= 0 0 280 467, height=27.5mm]{ciencia_e_natura_images/logo-ufsm.png}};
      \node[anchor=south,inner sep=0mm] at (\textwidth/2, 7mm) {\includegraphics[bb=0 0 577 117, width=91.3mm]{ciencia_e_natura_images/logo-ciencia-e-natura.jpg}};
      \node[anchor=south east, inner sep=0mm] at (\textwidth, 9mm) {\includegraphics[bb=0 0 2516 3579, height=22.6mm]{ciencia_e_natura_images/revista.jpg}};
      \node[left, anchor=east, inner sep = 0mm] at (\textwidth, 6mm) {\fontsize{8pt}{2pt}\selectfont ISSN \issn};
      \node[left, anchor=east, inner sep = 0mm] at (\textwidth, 1.5mm) {\includegraphics[bb=0 0 454 97, height=4.5mm]{\openacessfile}};

      \draw[line width=1.0pt, cncolor] (-20mm, -1.5mm) -- (\paperwidth, -1.5mm);
      \draw node[anchor=north, inner sep=2.5mm] at (\textwidth / 2, 0) {\fontsize{8pt}{2pt}\selectfont  Ci. e Nat., Santa Maria, v. \volume, \eJournal, 2022 \textbullet~\doi};
      \node[anchor=north, inner sep=2mm, yshift=-4.5mm] at (\textwidth / 2, 0) {\fontsize{8pt}{2pt}\selectfont \submittedtext: \submitionDate~\textbullet~\approvedtext: \approvalDate~\textbullet~\publishedtext: \publishDate};
      \draw[line width=1.0pt, cncolor] (-20mm, -10.0mm) -- (\paperwidth, -10mm);
    \end{scope}
  \end{tikzpicture}
  \vspace{15.5mm}
}
%
%----------------------------------------------------------------------------------------
%	FOOTER
%----------------------------------------------------------------------------------------
%
\if@portuguese
  \def\creativecommonstext{Artigo publicado por Ciência e Natura sob uma licença \href{https://creativecommons.org/licenses/by-nc/4.0/}{CC BY-NC-SA 4.0}.}
\else
  \def\creativecommonstext{Published by Ciência e Natura under a \href{https://creativecommons.org/licenses/by-nc/4.0/}{CC BY-NC-SA 4.0} license.}
\fi
%
\newcommand{\yearonfooter}[1]{\def\yearonfooter{#1}}
%
\definecolor{cncolor}{RGB}{0,102,153}
\setul{3pt}{2.5pt}
\setulcolor{cncolor}

\newcommand{\cenSection}[1]{\def\cenSection{\flushleft{\bf\footnotesize\selectfont#1}}}

\newcommand{\englishTitle}[1]{\def\englishTitle{#1}}
\newcommand{\portugueseTitle}[1]{\def\portugueseTitle{#1}}

\newcommand{\orcid}[1]{\href{https://orcid.org/#1}{\textcolor[HTML]{A6CE39}{\faOrcid}}}

\newcommand{\authorinfo}[3][]{%
  \normalsize
  \mbox{
    {\hspace{-3pt}\bf#2}% 
    {\ifthenelse{\equal{#3}{}}{}{\textsuperscript{~\bf\tiny#3}}}%
    {\ifthenelse{\equal{#1}{}}{}{\hspace{1.2pt}\orcid{#1}}}%
  }%
}

\newcommand{\affil}[1]{\def\affil{\par\footnotesize\selectfont#1}}
\newcommand{\affiliation}[2]{\textsuperscript{\tiny\selectfont#1}#2\par}

\newcommand{\makeabstract}[2]{
  \noindent\flushleft\setstretch{1.0}
  {\normalsize\textbf{#1}}\\[0pt]
  {\color{cncolor}\rule{\textwidth / 2}{1.0pt}}\\[3pt]
  \footnotesize\selectfont\setstretch{1.3}
  \nobreak\noindent\ignorespaces\justifying#2
}

\newcommand{\portugueseAbstract}[1]{\def\portugueseAbstract{%
  \makeabstract{RESUMO}{#1}
}}
%
\newcommand{\englishAbstract}[1]{\def\englishAbstract{%
  \makeabstract{ABSTRACT}{#1}
}}

\newcommand{\makekeywords}[2]{
  \noindent\\[6pt]
  \footnotesize{\bf#1:}~#2
}
%
\newcommand{\englishKeywords}[1]{\def\englishKeywords{
  \makekeywords{Keywords}{#1}
}}
%
\newcommand{\portugueseKeywords}[1]{\def\portugueseKeywords{
  \makekeywords{Palavras-chave}{#1}
}}
%
\newcommand{\shortHeaderTitle}[1]{\def\shortHeaderTitle{#1}}
\newcommand{\shortHeaderAuthors}[1]{\def\shortHeaderAuthors{#1}}

\if@english
  \bibliographystyle{apalike}
\else
  \bibliographystyle{cen}
\fi

\newcommand{\setupcoverpagefooter}{
    \setlength{\footskip}{27.00809pt}
    \enlargethispage{-5mm}
    \fancyfoot{} % Blank out the default footer

    \fancyfoot[L]{
      \noindent\begin{tikzpicture}[overlay]
        \begin{scope}[shift={(0,7mm)}]
          \draw[line width=1.0pt, cncolor] (0, 0) -- (\textwidth, 0);
          \node[anchor=north west,inner sep=0mm] at (0, -1.5mm) {\includegraphics[bb=0 0 88 31, width=17.4mm]{ciencia_e_natura_images/creativecommons.png}};
          \node[anchor=west, inner sep=0mm] at (20mm, -4.8mm) {\scriptsize\selectfont \creativecommonstext};
        \end{scope}
      \end{tikzpicture}
    }
  }

  \newcommand{\setupusualheader}{
    \fancyhead{}
    \renewcommand\headrule{\vspace{-1mm}\noindent\makebox[\linewidth]{\color{cncolor}\rule{\linewidth}{1.0pt}}}
    \fancyhead[EL]{\footnotesize \thepage~~\textbar{}~\shortHeaderTitle} % 
    \fancyhead[OR]{\footnotesize \shortHeaderAuthors~\textbar{}~~\thepage} % 
    \fancyhead[ER]{} %
    \fancyhead[OL]{} % 
  }

  \newcommand{\clearheader}{
    \renewcommand{\headrulewidth}{0pt}
    \fancyhead{} % Blank out the default header
  }

  \newcommand{\titles}{
    \centering
      \if@english
        {\fontsize{16pt}{0pt}\selectfont\bf\englishTitle}\\[5mm]
        {\fontsize{14pt}{0pt}\portugueseTitle}
      \else
        {\fontsize{16pt}{0pt}\selectfont\bf\portugueseTitle}\\[5mm]
        {\fontsize{14pt}{0pt}\englishTitle}
      \fi  
  }

  \renewcommand{\abstract}{
    \if@english
        \englishAbstract
        \englishKeywords\\[4mm]
        \vspace{\extraspace}
        \portugueseAbstract
        \portugueseKeywords
      \else
        \portugueseAbstract
        \portugueseKeywords\\[4mm]
        \vspace{\extraspace}
        \englishAbstract
        \englishKeywords
    \fi
  }

  \newcommand{\definecommomfooter}{
    \fancyfoot{} % Blank out the default footer
    \fancyfoot[C]{{\color{cncolor}\rule{90mm}{1.0pt}}\\[-3pt]{
      \fontsize{9pt}{0pt}\selectfont Ci. e Nat., Santa Maria, v.\volume, \eJournal, \yearonfooter}
    }
  }

  \newcommand{\howtocite}{
    \vspace{-10mm}
    \if@english%
      \section*{How to cite this article}%
    \else%
      \section*{Como citar este artigo}%
    \fi%
    \noindent\shortHeaderAuthors~
    \if@english\englishTitle\else\portugueseTitle\fi. Ciência e Natura, Santa Maria, v. 44, \yearonfooter. DOI: \doi.
  }

  \newcommand{\coverpage}{
    \tolerance=1
    \emergencystretch=\maxdimen
    \hyphenpenalty=10000
    \hbadness=10000

    \clearheader

    \setupcoverpagefooter

    \cncoverheader
    
    \cenSection
    
    \centering

    \vspace{8mm}
    \titles

    \vspace{7mm}
    \theauthor

    \vspace{4mm}
    \affil

    \vspace{5mm}
    \abstract
    
    \ifnum\value{page}=1
      \relax\clearpage
    \else
    \fi

    \definecommomfooter

    \setupusualheader
    
    \normalsize
    \setstretch{1.5}
    \setlength{\parskip}{0pt}
    \setlength{\parindent}{12.5mm} 
  }

  \newcounter{authorscounter}
  \setcounter{authorscounter}{1}

  \newcommand{\authorrules}[5]{
    \setlength{\parindent}{0pt}
    \setstretch{1.2}
    {
      {\bf\theauthorscounter~--~#1}\\
      {\fontsize{11pt}{0pt}
      #2\\
      {\ifthenelse{\equal{#3}{}}{}{#3 \textbullet}}~#4\\
      \if@english
        Contribution: #5
      \else
        Contribuição: #5
      \fi  
      }\\[3mm]
    }
    \stepcounter{authorscounter}
  }

\newcommand{\theauthorcontributions}[1]{
  \vspace{-2mm}
  \if@english
    \section*{Author contributions}
  \else
    \section*{Contribuições dos autores}
  \fi  
  \input{#1}
}

\renewcommand{\thefigure}{\arabic{figure}}

\newcommand{\longquotation}[1]{
  {\raggedleft\setstretch{1.0}
  \vspace{5mm}
  \begin{minipage}[b]{\linewidth-40mm}
    \footnotesize#1
  \end{minipage}\\[4mm]
  }
}

\captionsetup{%
  font=normalsize,
  labelfont=normalfont,
  singlelinecheck=false,
  tableposition=top,
  labelsep=endash,
  justification=raggedright,
  margin={0pt,0pt}
}

\makeatletter
\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname\hspace{3mm}}
\makeatother
