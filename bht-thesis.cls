\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bht-thesis}[2019/03/03 Thesis template for Beuth University of Applied Sience Berlin]

\LoadClass{scrreprt}

\KOMAoptions{
	fontsize=12pt,
	paper=a4,
	DIV=calc,
	twoside=false,
	twocolumn=false,
	draft=false,
	parskip=full,
	bibliography=totoc,
	listof=totoc
	}

\RequirePackage{xparse}
\RequirePackage{geometry}
\RequirePackage{makecell}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage[automark]{scrpage2}
\RequirePackage{setspace}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

\RequirePackage{listings}
\lstset{
	frame=single,
	captionpos=b
}
\renewcommand{\lstlistlistingname}{Quellcodeverzeichnis}
\renewcommand{\lstlistingname}{Quellcode}

% FIXME Roman page numbers not showing
% \pagestyle{scrheadings}
% \clearscrheadfoot
% \ohead{\rightmark}
% \ohead{\leftmark}
% \cfoot{
% 	\begin{flushright}
% 		\pagemark
% 	\end{flushright}
% }

\ProcessOptions\relax

\def\degree#1{\gdef\@degree{#1}}
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}

\def\university#1{\gdef\@university{#1}}
\def\@university{\@latex@warning@no@line{No \noexpand\university given}}

\def\faculty#1{\gdef\@faculty{#1}}
\def\@faculty{\@latex@warning@no@line{No \noexpand\faculty given}}

\def\course#1{\gdef\@course{#1}}
\def\@course{\@latex@warning@no@line{No \noexpand\course given}}

\def\thesistitle#1{\gdef\@thesistitle{#1}}
\def\@thesistitle{\@latex@warning@no@line{No \noexpand\thesistitle given}}

\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}

\def\address#1{\gdef\@address{#1}}
\def\@address{\@latex@warning@no@line{No \noexpand\address given}}

\def\matnr#1{\gdef\@matnr{#1}}
\def\@matnr{\@latex@warning@no@line{No \noexpand\matnr given}}

\def\phone#1{\gdef\@phone{#1}}
\def\@phone{\@latex@warning@no@line{No \noexpand\phone given}}

\def\email#1{\gdef\@email{#1}}
\def\@email{\@latex@warning@no@line{No \noexpand\email given}}

\def\expert#1{\gdef\@expert{#1}}
\def\@expert{\@latex@warning@no@line{No \noexpand\expert given}}

\def\city#1{\gdef\@city{#1}}
\def\@city{\@latex@warning@no@line{No \noexpand\city given}}

% \def\logo#1{\gdef\@logo{#1}}
% \def\@logo{\@latex@warning@no@line{No \noexpand\logo given}}

\renewcommand{\maketitle}{%
	\begin{titlepage}
		\begin{center}
			\vspace*{.06\textheight}
			\includegraphics[width=65mm]{figures/Beuth-Logo_basis}
			\vfill
			{\LARGE\bfseries\@title}
			\vfill
			zur Erlangung des akademischen Grades\\
			\@degree\\
			\vspace*{.01\textheight}
			an der\\
			\vspace*{.01\textheight}
			\@university\\
			\@faculty\\
			Studiengang \@course\\
			\vfill\vfill
			{\huge\bfseries\@thesistitle}
			\vfill\vfill
			\begin{minipage}[t]{0.4\textwidth}
				\vspace{0pt}
				{\renewcommand{\arraystretch}{1.5}%
				\begin{tabular}{ll}
					\multicolumn{2}{l}{\makecell[tl]{\bfseries{Eingereicht von:}}} \\
					\makecell[tl]{Name:} & \makecell[tl]{\@author} \\
					\makecell[tl]{Adresse:} & \makecell[tl]{\@address} \\
					\makecell[tl]{Matrikel-Nr.:} & \makecell[tl]{\@matnr} \\
					\makecell[tl]{Telefon:} & \makecell[tl]{\@phone} \\
					\makecell[tl]{E-Mail:} & \makecell[tl]{\@email} \\
				\end{tabular}}
			\end{minipage}
			\hfill
			\begin{minipage}[t]{0.4\textwidth}
				\vspace{0pt}
				{\renewcommand{\arraystretch}{1.5}%
				\begin{tabular}{ll}
					\multicolumn{2}{l}{\makecell[l]{\bfseries{Betreut von:}}} \\
					\makecell[tl]{Betreuer:} & \makecell[tl]{\@supervisor} \\
					\makecell[tl]{Gutachter:} & \makecell[tl]{\@expert} \\
				\end{tabular}}
			\end{minipage}\\[3cm]
		\end{center}
		\@city, \@date
	\end{titlepage}
}
\newcommand{\statutorydeclaration}{
	\chapter*{Eidesstattliche Erklärung}
	Hiermit erkläre ich an Eides Statt, dass ich die vorliegende Arbeit selbstständig, ohne fremde Hilfe und ohne Benutzung anderer als die angegebenen Hilfsmittel angefertigt habe. Die aus fremden Quellen (einschließlich elektronischer Quellen) direkt oder indirekt übernommenen Gedanken sind ausnahmslos als solche kenntlich gemacht. Die Arbeit ist in gleicher oder ähnlicher Form oder auszugsweise im Rahmen einer anderen Prüfung noch nicht vorgelegt worden.
	
	\begin{tabular}{@{}p{3in}p{3in}@{}}
		\@city, \@date \\
		\\
		& \hrulefill \\
		& \@author \\
		\end{tabular}
}
