\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ejercicios}[2026/11/16 Jesus A. Mendoza]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twoside]{article}

\RequirePackage{array}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish, es-tabla]{babel}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{longtable}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{needspace}
\RequirePackage{tikz}
\RequirePackage{amsmath}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}
\RequirePackage{hyperref}
\RequirePackage{amssymb}

\definecolor{Pantone}{rgb}{0.725,0.066,0.086}
\definecolor{PantoneOrange}{rgb}{0.886,0.275,0.133}

\hypersetup{colorlinks=true, linkcolor=Pantone, urlcolor=PantoneOrange}

\newcounter{exercise}
\newcommand{\@tareaN}{}
\newcommand{\tareaN}[1]{%
  \renewcommand{\@tareaN}{\textcolor{Pantone}{#1}}%
  \setcounter{exercise}{0}%
}

\NewDocumentEnvironment{exercise}{O{}}
  {\refstepcounter{exercise}%
   \addcontentsline{toc}{section}{Problema \theexercise}%
   \tcolorbox[
     breakable,
     colback=PantoneOrange!10,
     colframe=PantoneOrange,
     coltitle=white,
     fonttitle=\bfseries,
     title={Problema \theexercise.\ #1},
     arc=3pt,
     boxrule=0.8pt,
     left=8pt, right=8pt, top=6pt, bottom=6pt,
     before skip=10pt, after skip=10pt
   ]}
  {\endtcolorbox}

\NewDocumentEnvironment{solution}{}
  {\par\medskip\noindent
   \textbf{Solución:}\par\nobreak\smallskip}
  {\par\medskip}

\setlength{\headheight}{14pt}

\fancypagestyle{ejercicios}{%
  \fancyhf{}
  \fancyhead[LO,RE]{\textcolor{PantoneOrange}{Jesús Amador Mendoza}}
  \fancyhead[RO,LE]{\textcolor{PantoneOrange}{\@tareaN}}
  \fancyfoot[RO,LE]{%
    \tikz[baseline = (n.base)]{
      \node[fill=PantoneOrange, text=white, inner sep=12pt, rounded corners=5pt] (n) {\thepage};
    }%
  }%
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\pagestyle{ejercicios}
\endinput
