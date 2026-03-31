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
\RequirePackage{tikz}
\RequirePackage{setspace}

%% ---- Page layout ----
\geometry{
  a4paper,
  top        = 40mm,
  bottom     = 30mm,
  left       = 30mm,
  right      = 30mm,
  headheight = 25mm,
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
  \begin{tikzpicture}[remember picture, overlay]
    %% Left: English name
    \node[anchor=south west, text width=5cm, inner sep=0pt]
      at ([xshift=30mm, yshift=-25mm]current page.north west)
      {\raggedright\color{hustblue}\bfseries\sffamily\fontsize{12}{15}\selectfont
       Huazhong University of\\[1pt]Science and Technology};
    %% Center: circular logo
    \node[anchor=south, inner sep=0pt]
      at ([yshift=-22mm]current page.north)
      {\includegraphics[height=14mm]{images/pdf/hustclogo.pdf}};
    %% Right: Chinese calligraphic name
    \node[anchor=south east, inner sep=0pt]
      at ([xshift=-30mm, yshift=-24mm]current page.north east)
      {\includegraphics[height=16mm]{images/pdf/hustctext.pdf}};
    %% Blue rule
    \draw[hustblue, line width=1.5pt]
      ([xshift=30mm, yshift=-28mm]current page.north west) --
      ([xshift=-30mm, yshift=-28mm]current page.north east);
    %% Address — left
    \node[anchor=north west, inner sep=0pt]
      at ([xshift=30mm, yshift=-29.5mm]current page.north west)
      {\small\color{hustblue}Add: 1037\#Luoyu Rd., Wuhan, China 430074};
    %% Address — right
    \node[anchor=north east, inner sep=0pt]
      at ([xshift=-30mm, yshift=-29.5mm]current page.north east)
      {\small\color{hustblue}中华人民共和国\quad 湖北\enspace 武汉};
  \end{tikzpicture}%
}
