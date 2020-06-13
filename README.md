# mancls：一个简单的软件著作权申请的TeX文档类

注意：应当在导言部分将`\title`定义为你的软件名，如“素数生成软件V1.0”

## Options
- `code`：标明本文档是源码文档，否则是说明书文档
- `noheaders`：不使用页眉

## Commands
- `\code`：提供一个Markdown效果的代码框
- `\bs`：`\textbackslash`的alias
- `\maketitle`：重写了`\maketitle`，提供一个垂直居中`\@title`+“使用说明书”字样的标题页。文档会自动加载标题页。
- `\contens`：一个独占一页、没有页眉的目录页。文档会自动为说明书文档在标题页后加载目录页。

## lststyle
- `codestyle`：自动隐藏注释、隐藏空白行、允许换行的`listings`样式，默认语言为Python。
- `codestyleln`：同上，但在左侧加注行号

## Headers
页眉样式居中显示`\@title`，右侧显示第X页
