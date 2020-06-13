# mancls：一个简单的软件著作权申请的TeX文档类

为软件著作权申请提供制作软件说明书、软件源码文档的TeX文档类。

## Usage
1. 调用文档类：
  * 若文档为软件说明书，直接调用：`\documentclass{mancls}`。
  * 若文档为源码文件，加`code`选项：`\documentclass[code]{mancls}`
2. 在导言部分将`\title`定义为你的软件名，如`\title{素数生成软件V1.0}`。
3. 开始编写文档：
  * 若文档为软件说明书，直接编写内容，**无需手动添加标题与目录**。
  * 若文档为源码文件，直接使用`\lstinputlisting`引入文件源码文件，并将样式修改为`codestyle`即可，如：`\lstinputlisting[style=codestyle]{main.py}`

## Options
- `code`：标明本文档是源码文档，否则是说明书文档
- `noheaders`：不使用页眉

## Commands
- `\code`：提供一个Markdown效果的代码框
- `\bs`：`\textbackslash`的alias
- `\maketitle`：重写了`\maketitle`，提供一个垂直居中`\@title`+“使用说明书”字样的标题页。文档会自动加载标题页。
- `\contens`：一个独占一页、没有页眉的目录页。文档会自动为说明书文档在标题页后加载目录页。

## lststyle
- `codestyle`：自动隐藏注释、隐藏空白行、允许换行的`listings`样式，默认语言为Python。若将语言改为其他语言，只需要将`codestyle`定义中的`language`键值和两个`morecomment`键值改掉即可，例如C++改为`language=C++,morecomment=[is]{/*}{*/},morecomment=[il][//]`。
- `codestyleln`：同上，但在左侧加注行号

## Headers
页眉样式居中显示`\@title`，右侧显示第X页

## PageSize
源码文档中，调整页面大小至每页50行以上源码。
注：直接`\geometry{textheight=50\baselineskip}`着实有点丑，所以我配合了`\renewcommand{\baselinestretch}{}`。
