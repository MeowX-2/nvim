return {
  s(
    "file",
    fmta(
      [[
\documentclass{scrartcl}
\title{<>}
\author{Arifa Alam}
\usepackage{tikz, amsmath,amsthm,amssymb}
\usepackage[most]{tcolorbox}
\usepackage{breqn}
\usepackage{xcolor}
\usepackage{ragged2e}
\usepackage{footnotehyper}
\usepackage{blindtext}
\usepackage{adjustbox}
\usepackage{fncychap}
\usepackage{fancyhdr}
\usepackage[inline]{asymptote}
\allowdisplaybreaks
\tcbuselibrary{theorems}
\usepackage[bottom]{footmisc}
\usepackage[hidelinks]{hyperref}
\usepackage{thmtools}
\declaretheoremstyle[
headfont=\color{myblue}\normalfont\bfseries\textbf,
bodyfont=\color{black}\normalfont,
]{colored}
\declaretheorem[
style=colored,
name=Problem, numberwithin=section
]{prb}
%options: Sonny, Lenny, Glenn, Conny, Rejne, Bjarne, Bjornstrup%

\hypersetup{
      colorlinks=true,
      citecolor=black,
      filecolor=black,
      linkcolor=black,
      urlcolor=BlueViolet
}
\definecolor{RoaylBlue}{HTML}{0071BC}
\definecolor{myblue}{HTML}{012169}
\definecolor{SeaGreen}{HTML}{3FBC9D}
\definecolor{SkyBlue}{HTML}{46C5DD}
\definecolor{BlueViolet}{HTML}{473992}
\definecolor{Cerulean}{HTML}{00A2E3}
\definecolor{NordBlack}{HTML}{2E3440}
\definecolor{myred}{HTML}{8B0000}

 % linktocpage,
 \newcommand{\Proof}{\textcolor{RoaylBlue!60!black}{\textbf{    Proof---\\}}}
\renewcommand{\qedsymbol}{$\square$}
\renewcommand\thefootnote
  {\begingroup{\arabic{footnote}}\endgroup}
  \renewcommand{\labelenumii}{\textbf{\Alph{\arabic{enumi}.\arabic{enumii}}}}
  \renewcommand{\labelenumiii}{\textbf{\Alph{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}}}}
  \renewcommand{\labelenumiv}{\textbf{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.\arabic{enumiv}}}
  \renewcommand{\labelenumi}{\textbf{\Alph{enumi}}}
%BOXES========================================%
\newtcolorbox{solu}{enhanced,colback=white,breakable, boxrule=0pt,arc=0pt,frame hidden, borderline west={0.4mm}{0mm}{black}}

\newtcolorbox{solun}{enhanced,colback=Cerulean!5!white,breakable, boxrule=0pt,arc=0pt,frame hidden, borderline west={0.8mm}{0mm}{Cerulean}}



\newtcbtheorem[number within=section]{col}{Collorary}
{enhanced,breakable,colback=brown!5!white,boxrule=0pt,colbacktitle=brown!30!white,fonttitle=\bfseries, description font = \normalfont, titlerule = 0mm, coltitle= black, arc=0pt,frame hidden,borderline west={1mm}{0mm}{brown} }{th}{}{}

\newtcbtheorem[number within=section]{lemma}{Lemma}
{enhanced,colback=green!10!white,boxrule=0pt, colframe=green!5!white,breakable,fonttitle=\bfseries,description font=\normalfont,titlerule=0mm, colbacktitle=green!10!white,title=#1,coltitle=black,arc=0pt, borderline west={1mm}{0mm}{green!50!black}}{th}{}

\newtcbtheorem[number within=section]{df}{Definition}
{enhanced,colback=myred!5!white,boxrule=0pt, colframe=myred!5!white,breakable,fonttitle=\bfseries,description font=\normalfont,titlerule=0mm, colbacktitle=myred!5!white,title=#1,coltitle=black,arc=0pt, borderline west={1mm}{0mm}{myred!50!black}}{th}{}

\newtcbtheorem[number within=section]{thm}{Theorem}
{enhanced,colback=SkyBlue!20!white,boxrule=0.2pt, fonttitle=\bfseries,description font=\normalfont, breakable, titlerule=0.1mm, colbacktitle=SkyBlue!80!white,title=#1,coltitle=black,arc=8pt,colframe=black} {th}{}

\newtcbtheorem[number within=section]{example}{Example }
{enhanced,colback=SeaGreen!10!white,boxrule=0pt, colframe=SeaGreen!5!white,fonttitle=\bfseries,description font=\normalfont, breakable,titlerule=0mm, colbacktitle=SeaGreen!10!white,title=#1,coltitle=SeaGreen!70!black,arc=0pt, borderline west={1mm}{0mm}{SeaGreen}}{th}{}{}

\newtcbtheorem{remarks}{Remarks}
{enhanced,colback=white,boxrule=0pt, colframe=white,breakable,fonttitle=\bfseries,description font=\normalfont,titlerule=0mm, colbacktitle=white,title=#1,coltitle=NordBlack,arc=0pt, borderline west={1mm}{0mm}{NordBlack!50!black}}{th}{}


\newenvironment{lemmabox}[1][]{
    \begin{exm}[#1]

 }{

   \end{exm}
}
\newenvironment{claim}{
    \begin{solun}
    \textcolor{RoaylBlue!60!black}{\textbf{Claim---}}
 }{

   \end{solun}
}

\newenvironment{solve}{
  \begin{solu}
    \textcolor{black}{\textbf{  Solution---\\ }}
 }{

   \end{solu}
}
\usepackage{thmtools}
\declaretheoremstyle[
headfont=\color{blue!50!black}\normalfont\bfseries\textbf,
bodyfont=\color{black}\normalfont,
]{colored}
\declaretheorem[
style=colored,
name=Problem,
]{pr}

\begin{document}
\maketitle
<>
\end{document}

]],
      { i(1), i(2) }
    )
  ),
}
