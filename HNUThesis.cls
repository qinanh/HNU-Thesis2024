\ProvidesClass{HNUThesis}[2023/04/06 v1.0 Hunan University Thesis Class]
\LoadClass[12pt]{article} % 基于article类

\usepackage{amssymb}
\RequirePackage{caption}
\RequirePackage{ctex} % 支持中文
\RequirePackage{times} % 使用Times字体作为英文字体
\RequirePackage{geometry}
% 设置页边距
\geometry{a4paper,left=3cm,right=2cm,top=3cm,bottom=2.5cm}

% 设置中英文字体
\RequirePackage{setspace}
\setstretch{1.5} % 设置行距为1.5倍
\newcommand{\TitleName}[1]{\def\thetitle{#1}}
\newcommand{\StudentName}[1]{\def\thestudent{#1}}
\newcommand{\StudentNumber}[1]{\def\thestudentnum{#1}}
\newcommand{\MajorClass}[1]{\def\themajor{#1}}
\newcommand{\DepartmentName}[1]{\def\thedepartment{#1}}
\newcommand{\AdvisorName}[1]{\def\theadvisor{#1}}
\newcommand{\DateYear}[1]{\def\thedateyear{#1}}
\newcommand{\DateMonth}[1]{\def\thedatemonth{#1}}
\newcommand{\DateDay}[1]{\def\thedateday{#1}}

% 定义封面
\newcommand{\MakeTitlePage}{
    \begin{titlepage}
        \centering
        \vspace*{1cm}
        % \includegraphics[width=0.5\textwidth]{hunan_university_logo.png} % 湖南大学徽标图片文件名，如需启用请取消注释
        \vspace{3cm}
        {\huge\bfseries \thetitle \par}
        \vspace{2cm}
        {\Large 学生姓名：\thestudent \par}
        \vspace{1cm}
        {\Large 学生学号：\thestudentnum \par}
        \vspace{1cm}
        {\Large 专业班级：\themajor \par}
        \vspace{1cm}
        {\Large 学院名称：\thedepartment \par}
        \vspace{1cm}
        {\Large 指导老师：\theadvisor \par}
        \vfill
        {\Large \thedateyear 年 \thedatemonth 月 \thedateday 日\par}
    \end{titlepage}
}
\RequirePackage{titlesec} % 确保引入了titlesec包
\AtBeginDocument{
  % 设置正文字体大小为小四号（大约12pt），并指定宋体
  \renewcommand\normalsize{\fontsize{12pt}{14.4pt}\selectfont}
  \normalsize % 应用设置
  \setCJKmainfont{SimSun} % 设置正文中文字体为宋体
  \setCJKsansfont{SimHei} % 设置中文黑体
  \setmainfont{Times New Roman} % 设置英文正文字体
  
  % 设置章节标题样式
  \titleformat{\section}
  {\normalfont\fontsize{16pt}{19.2pt}\bfseries\sffamily}{\thesection}{1em}{}
  \titleformat{\subsection}
    {\normalfont\fontsize{12pt}{14.4pt}\bfseries\sffamily}{\thesubsection}{1em}{}
  \titleformat{\subsubsection}
    {\normalfont\fontsize{12pt}{14.4pt}\bfseries\sffamily}{\thesubsubsection}{1em}{}
      % 调整二级和三级标题前后的间隔
  \titlespacing*{\subsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}
  \titlespacing*{\subsubsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}



  % 设置图表标题样式为黑体五号字
  \DeclareCaptionFont{fiveht}{\zihao{5}\heiti}
  \captionsetup[figure]{
    font=fiveht, % 使用刚刚定义的字体样式
    labelsep=quad, % 标签和文字之间的分隔符样式为一个空格大小
    figurename=图, % 确保“图”字使用中文
    \captionsetup[table]{
        font=fiveht,
        labelsep=quad,
        tablename=表, % 确保“表”字使用中文
        position=top, % 表格标题通常位于表格上方
      }



}

}
  
  \usepackage{fancyhdr}
  \pagestyle{fancy}
  \fancyhf{} % 清除默认页眉页脚
  \newcommand{\makeheadrule}{%
  \makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.5pt}}%
  \rule[0.7\baselineskip]{\headwidth}{1pt}}
  \renewcommand{\headrule}{%
  {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
  \makeheadrule}}
  
  % 设置页脚
  \cfoot{\fontsize{10.5pt}{12.6pt}\selectfont \thepage}
  
  % 定义页眉和页脚中的内容
  \fancyhead[C]{湖南大学本科生毕业论文（设计)} % 页眉中间内容
  \fancyfoot[C]{\thepage} % 页脚中间内容
}


\newcommand{\makeconsent}{
  \begin{center}
    {\zihao{-2}\heiti \universityname}\\[20.45pt]
    {\zihao{-2}\heiti \thesisdeclaration}\\[20.45pt]
  \end{center}

  \normalsize

  \declarationtext\\[20.45pt]

  学生签名：\hspace{5cm}  日期：\the\year 年\hspace{0.5cm}月\hspace{0.5cm}日\\[40.9pt]



  \begin{center}
    {\zihao{-2}\heiti \copyrightdeclaration}\\[12pt]
  \end{center}

  \copyrighttext



  本论文（设计）属于

  \hspace*{3cm}1、保\quad 密$\square$，在\underline{\hspace{2cm}}年解密后适用本授权书。

  \hspace*{3cm}2、不保密$\square$。

  \hspace*{3cm}（请在以上相应方框内打“√”）\\[30.65pt]

  学生签名：\hspace{5cm}  日期：\the\year 年\hspace{0.5cm}月\hspace{0.5cm}日


  导师签名：\hspace{5cm}  日期：\the\year 年\hspace{0.5cm}月\hspace{0.5cm}日
  }


  \newcommand{\abstracttitle}[1]{
    \begin{center}
      {\zihao{-3}\heiti  #1}
    \end{center}
  }

  \newcommand{\Abstracttitle}[1]{
    \begin{center}
      \textbf{\zihao{-3} #1}
    \end{center}
  }

  \renewenvironment{abstract}{
  \small
  \begin{center}
    {\zihao{3}\heiti  摘\hspace{2em}要}
  \end{center}
  \addcontentsline{toc}{section}{摘要} % Add abstract to the table of contents
  \par
  \zihao{-4}
}{
  \par
}

\newenvironment{Abstract}{
  \small
  \begin{center}
    \textbf{\zihao{3} Abstract}
  \end{center}
  \addcontentsline{toc}{section}{Abstract} % Add abstract to the table of contents
  \par
  \zihao{-4}
}{
  \par
}


% Define keywords command
\newcommand{\keywords}[1]{
  \vspace{1em}
  \noindent
  {\zihao{4}\heiti 关键词:} {\zihao{-4}\heiti #1}
  \newpage
}

\newcommand{\Keywords}[1]{
  \vspace{1em}
  \noindent
  \textbf{{\zihao{4} Key Words:} {\zihao{-4}#1}}
  \newpage
}


% 设置变量
\newcommand{\universityname}{湖 南 大 学}
\newcommand{\thesisdeclaration}{毕业论文（设计）原创性声明}
\newcommand{\declarationtext}{
    本人郑重声明：所呈交的论文（设计）是本人在导师的指导下独立进行研究所取得的研究成果。除了文中特别加以标注引用的内容外，
    本论文不包含任何其他个人或集体已经发表或撰写的成果作品。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。
    本人完全意识到本声明的法律后果由本人承担。
}
\newcommand{\studentsignatureline}{学生签名：\hspace{3cm}日期：\underline{\hspace{2em}}年\underline{\hspace{1em}}月\underline{\hspace{1em}}日}
\newcommand{\copyrightdeclaration}{毕业论文（设计）版权使用授权书}
\newcommand{\copyrighttext}{
    本毕业论文（设计）作者完全了解学校有关保留、使用论文（设计）的规定，同意学校保留并向国家有关部门或机构送交论文（设计）的复印件和电子版，
    允许论文（设计）被查阅和借阅。本人授权湖南大学可以将本论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本论文（设计）。
}
\newcommand{\confidentialityclause}{
    本论文（设计）属于
    1、保  密  ，在\underline{\hspace{4em}}年解密后适用本授权书。
    2、不保密  。
    （请在以上相应方框内打“√”）
}
\newcommand{\advisorlinesignature}{导师签名：\hspace{3cm}日期：\underline{\hspace{2em}}年\underline{\hspace{1em}}月\underline{\hspace{1em}}日}



