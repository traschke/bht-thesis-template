\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bht-thesis}[2019/03/03 Thesis template for Beuth University of Applied Sience Berlin]

\LoadClass{article}

\RequirePackage{xparse}
\RequirePackage{geometry}
\RequirePackage{makecell}
\RequirePackage{array}
\RequirePackage{graphicx}

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
				\begin{flushleft}
					\begin{tabular}{l l}
						\multicolumn{2}{l}{\makecell[l]{\bfseries{Eingereicht von:}}} \\
						\makecell[l]{Name:} & \makecell[l]{\@author} \\
						\makecell[l]{Adresse:} & \makecell[l]{\@address} \\
						\makecell[l]{Matrikel-Nr.:} & \makecell[l]{\@matnr} \\
						\makecell[l]{Telefon:} & \makecell[l]{\@phone} \\
						\makecell[l]{E-Mail:} & \makecell[l]{\@email}
					\end{tabular}
				\end{flushleft}
			\end{minipage}
			\begin{minipage}[t]{0.4\textwidth}
				\begin{flushleft}
					\begin{tabular}{l l}
						\multicolumn{2}{l}{\makecell[l]{\bfseries{Betreut von:}}} \\
						\makecell[l]{Betreuer:} & \makecell[l]{\@supervisor}\\
						\makecell[l]{Gutachter:} & \makecell[l]{\@expert}
					\end{tabular}
				\end{flushleft}
			\end{minipage}\\[3cm]
			\begin{flushleft}
				\@city, \today
			\end{flushleft}
		\end{center}
	\end{titlepage}
}
