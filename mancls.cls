\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mancls}

%code选项：标明文档是否为源代码文档；noheaders选项：不展示页眉
\DeclareOption{code}{\newcommand{\codedoc}{}}
\DeclareOption{noheaders}{\newcommand{\noheaders}{}}
\ProcessOptions\relax

\LoadClass{ctexart}
\RequirePackage{xcolor}
\RequirePackage{ragged2e}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{geometry}

%提供行内代码环境\code与右斜杠别名\bs
\definecolor{codecolor}{gray}{0.95}
\newcommand{\code}[1]{\colorbox{codecolor}{\texttt{#1}}}
\newcommand{\bs}{\textbackslash}

%重定义标题页
\renewcommand{\maketitle}{
    \pagebreak
    \hspace{0pt}
    \vfill
\begin{center}
    {\Centering \songti \zihao{1} \textbf{\@title}}
\end{center}
\begin{center}
    {\songti \fontsize{48}{72} \selectfont \textbf{使用说明书}}
\end{center}
    \vfill
    \hspace{0pt}
    \thispagestyle{empty}
    \pagebreak
}
%提供新的目录命令\contents命令
\newcommand{\contents}{
    \tableofcontents
    \thispagestyle{empty}
    \pagebreak
}
%为文档开头添加标题页，如果是手册文档，添加目录页
\AtBeginDocument{
    \maketitle
    \ifdefined \codedoc \else \contents \fi
    \setcounter{page}{0}
}

\ifdefined \noheaders
%清除页眉页脚
\pagestyle{empty}
\else
%定义页眉页脚样式
\pagestyle{fancy}
\fancyhf{}
\chead{\@title}
\rhead{第\thepage 页}
\fi
%提供有行号和无行号的两个listings样式
\lstdefinestyle{codestyle}{
    language=Python,
    morecomment=[is]{'''}{'''},
    morecomment=[il]{\#},
    emptylines=0,
    numbers=none,
    breaklines=true
}
\lstdefinestyle{codestyleln}{
    language=Python,
    morecomment=[is]{'''}{'''},
    morecomment=[il]{\#},
    emptylines=0,
    numbers=left,
    breaklines=true
}
%为源码文件调整每页行数，效果大约是每页55行
\ifdefined \codedoc
\geometry{
    textheight=42\baselineskip,
    paper=a4paper
}
\renewcommand{\baselinestretch}{0.995}
\fi

