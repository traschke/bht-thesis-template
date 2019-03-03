\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bht-thesis}[2019/03/03 Thesis template for Beuth University of Applied Sience Berlin]

\LoadClass{article}

\RequirePackage{xparse}
\RequirePackage{geometry}

\ProcessOptions\relax

\def\degree#1{\gdef\@degree{#1}}
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}
\def\university#1{\gdef\@university{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\course#1{\gdef\@course{#1}}
\def\thesistitle#1{\gdef\@thesistitle{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}

\renewcommand{\maketitle}{%
	\begin{titlepage}
		\begin{center}
			\vspace*{.06\textheight}
			{\LARGE\bfseries\@title}
			\vfill
			zur Erlangung des akademischen Grades\\
			\@degree
			\vfill
			an der
			\vfill
			\@university\\
			\@faculty\\
			Studiengang \@course\\
			\vfill\vfill
			{\huge\bfseries\@thesistitle}
			\vfill\vfill
			\begin{minipage}[t]{0.4\textwidth}
				\begin{flushleft} \large
					\emph{Eingereicht von:}\\
					\@author
				\end{flushleft}
			\end{minipage}
			\begin{minipage}[t]{0.4\textwidth}
				\begin{flushleft} \large
					\emph{Betreut von:} \\
					\@supervisor 
				\end{flushleft}
			\end{minipage}\\[3cm]
		\end{center}
	\end{titlepage}
}
