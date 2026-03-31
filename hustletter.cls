%% hustletter.cls — HUST Letterhead Document Class
%% Compile with: xelatex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hustletter}[2026/04/01 v1.0 HUST Letterhead Class]

%% ---- Base class ----
\LoadClass[12pt]{ctexart}

%% ---- Required packages ----
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{setspace}

%% ---- Page layout ----
\geometry{
  a4paper,
  top        = 45mm,
  bottom     = 30mm,
  left       = 30mm,
  right      = 30mm,
  headheight = 33mm,
  headsep    = 6mm,
}

%% ---- Colors ----
\definecolor{hustblue}{RGB}{1,85,157}

%% ---- Fonts ----
\setCJKmainfont[BoldFont=Heiti SC]{Source Han Serif SC}
\setCJKsansfont{Heiti SC}
\setmainfont{Times New Roman}
\punctstyle{kaiming}

%% ---- Line spacing ----
\setstretch{1.5}

%% ---- Letterhead header ----
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancyhead[C]{%
  \begin{minipage}{\textwidth}
    %% Row 1: English name | logo | Chinese name
    \parbox[c]{0.30\textwidth}{%
      \raggedright\color{hustblue}\bfseries\sffamily\fontsize{12}{15}\selectfont
      Huazhong University of\\[1pt]Science and Technology}%
    \hfill
    \includegraphics[height=15mm]{images/pdf/hustclogo.pdf}%
    \hfill
    \includegraphics[width=0.36\textwidth,height=18mm,keepaspectratio]{images/pdf/hustctext.pdf}%
    \\[2mm]%
    %% Blue rule
    {\color{hustblue}\rule{\textwidth}{1.5pt}}\\[1mm]%
    %% Address line
    {\small\color{hustblue}%
      Add: 1037\#Luoyu Rd., Wuhan, China 430074%
      \hfill 中华人民共和国\quad 湖北\enspace 武汉}%
  \end{minipage}%
}
