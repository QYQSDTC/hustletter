# HUST Letterhead LaTeX Template

A clean LaTeX document class for typesetting letters and documents on Huazhong University of Science and Technology (华中科技大学) letterhead.

## Usage

```latex
\documentclass{hustletter}

\begin{document}

\setlength{\parindent}{2\ccwd}

{\centering\zihao{3}\bfseries\sffamily Your Title\par}
\vspace{1cm}

Your content here.

\end{document}
```

Compile with:

```bash
xelatex your_document.tex
```

## Files

```
hustletter.cls          document class (letterhead layout & fonts)
images/pdf/
  hustclogo.pdf         HUST circular seal logo
  hustctext.pdf         HUST Chinese calligraphic name
```

## Requirements

- XeLaTeX
- Fonts: Source Han Serif SC, Heiti SC, Times New Roman
- Packages: fontspec, geometry, fancyhdr, xcolor, tikz, setspace, ctex
