\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{adk_cv}[2020/04/01 My CV template]
\LoadClass[a4paper, 9pt]{article}

% packages
\RequirePackage[defaultfam,light,tabular,lining]{montserrat}
\RequirePackage{titlesec}
\RequirePackage{xcolor}\definecolor{cvblue}{HTML}{5E81AC}\titleformat{\section}         
  {\bfseries\raggedright\color{cvblue}}  % title format
  {}{0em}                 % prefix to section
  {}   



 \RequirePackage{relsize}\let\oldsection\section
 \renewcommand*{\section}[1]{
   \oldsection{#1}
 }

\definecolor{cvdarkgrey}{HTML}{4C566A}
\titleformat{\subsection}         
  {\bfseries\color{cvdarkgrey}} 
  {}{0em}  
  {}

  \newcommand*{\educationHeader}[2]{
    \subsection{#1} 
    \vspace{-0.3em}
    {\raggedright\color{cvblue}#2}

  }

\RequirePackage{ifthen}\newcommand*{\work}[3]{
  \subsection{#1}
  \ifthenelse{\equal{#2}{}}{}{\textbf{#2}\\}
  #3
}

\titlespacing*{\subsection}{0pt}{0.7\baselineskip}{0.4\baselineskip}
\titlespacing*{\section}{0pt}{1\baselineskip}{0.4\baselineskip}
\renewcommand{\baselinestretch}{1}


\newcommand{\titletext}[2]{
    {\noindent\bfseries\fontsize{20}{20}\selectfont#1}
    % persons title
    

    {\noindent\bfseries\color{cvblue}\small#2}
    {}
}


\newcommand{\header}[1]{
    {\hspace{-1.5em}}{\textbf{CURRICULUM VITAE} \hspace{0.05cm} \raisebox{0.22ex}{$\bullet$} \hspace{0.05cm} \selectfont#1}
    % add a space

    
    {\noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}}}
    {\vspace{0.05cm}}
}
