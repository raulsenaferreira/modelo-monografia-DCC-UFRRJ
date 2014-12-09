%%%
%%%========================================================================
%%%========================================================================
%%% Este é o arquivo `Estilo.cls'. Não foi gerado com o utilitário     %===
%%% docstrip.                                                          %===
%%%========================================================================
%%%========================================================================
%%% Essa classe foi obtida acrescentando texto, definições, comandos e %===
%%% ambientes à classe padrão report. Todas as opções e definições da  %===
%%% classe report foram mantidas.                                      %===
%%%========================================================================
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%% Este é o único arquivo da classe Estilo. Não existem arquivos      %===
%%% associados, portanto, este é o único arquivo necessário para       %===
%%% que a classe funcione.                                             %===
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%          Autor: Professor - Benaia Sobreira de Jesus Lima          %===
%%%========================================================================
%%%========================================================================
%%%\CharacterTable                                                     %===
%%% {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z%===
%%%  Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z%===
%%%  Digits        \0\1\2\3\4\5\6\7\8\9                                %===
%%%  Exclamation   \!     Double quote  \"     Hash (number) \#        %===
%%%  Dollar        \$     Percent       \%     Ampersand     \&        %===
%%%  Acute accent  \'     Left paren    \(     Right paren   \)        %===
%%%  Asterisk      \*     Plus          \+     Comma         \,        %===
%%%  Minus         \-     Point         \.     Solidus       \/        %===
%%%  Colon         \:     Semicolon     \;     Less than     \<        %===
%%%  Equals        \=     Greater than  \>     Question mark \?        %===
%%%  Commercial at \@     Left bracket  \[     Backslash     \\        %===
%%%  Right bracket \]     Circumflex    \^     Underscore    \_        %===
%%%  Grave accent  \`     Left brace    \{     Vertical bar  \|        %===
%%%  Right brace   \}     Tilde         \~}                            %===
%%%========================================================================
%%%========================================================================
%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Estilo}[13/06/2009 v 1 Classe Pública]
%%% Última atualização 20/01/2014
\RequirePackage{setspace} %%% Único pocote necessário - controla
%%%                                 o espaço entre linhas
%%%
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\if@compatibility\else
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                       Opções da Classe report                      %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%%%
  \AtEndOfPackage{%%%
   \renewcommand\@openbib@code{%%%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@}%%%
   \renewcommand\newblock{\par}}}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                     Minhas Opções da Classe Estilo                 %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Para monografia de graduação - Licenciatura
%%%
\DeclareOption{licenciatura}{\let\@escolha=0} %%% Padrão
%%%
%%% Para monografia de graduação - Bacharelado
%%%
\DeclareOption{bacharel}{\let\@escolha=1}
%%%
%%% Para monografia de especialização
%%%
\DeclareOption{especialista}{\let\@escolha=2}
%%%
%%% Para dissertação de mestrado
%%%
\DeclareOption{mestre}{\let\@escolha=3}
%%%
%%% Para tese de doutorado
%%%
\DeclareOption{doutor}{\let\@escolha=4}
%%%
%%% Opções de espaçamentos. Exigem o pacote setspace
%%%
\DeclareOption{Esimples}{\AtBeginDocument{\singlespacing}}
\DeclareOption{Eumemeio}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{Eduplo}{\AtBeginDocument{\doublespacing}}
%%%
%%% Opções de Estilo e Numeração das Páginas - ENP
%%%
\DeclareOption{latex}{\let\@ENPescolha=0}
\DeclareOption{larom}{\let\@ENPescolha=1}
\DeclareOption{abnt}{\let\@ENPescolha=2} %%%Padrão
\DeclareOption{topo}{\let\@ENPescolha=3}
\DeclareOption{tracejado}{\let\@ENPescolha=4}
\DeclareOption{mistura}{\let\@ENPescolha=5}
\DeclareOption{popular}{\let\@ENPescolha=6}
\DeclareOption{estilo}{\let\@ENPescolha=7}
\DeclareOption{sofisticado}{\let\@ENPescolha=8}
\DeclareOption{alternativo}{\let\@ENPescolha=9}
%%%
%%% Fonte times, primeira opção
%%%
\let\@escolhatimes=0
\DeclareOption{times}{\let\@escolhatimes=1}
%%%
%%% Fonte times, segunda opção, usa o pacote times
%%%
\DeclareOption{ttimes}{\let\@escolhatimes=2}
%%%
%%% Opções de alinhamento do título dos elmentos da parte textual,
%%% a saber: capítulos, seções, subseções e subsubseções.
%%%     %%% \flushleft e \raggedright qual a diferença?
\DeclareOption{esquerda}{\newcommand\alinhamento{\raggedright}} %%%Padrão
\DeclareOption{centro}{\newcommand\alinhamento{\center}}
%%%     %%% \flushright e \raggedleft qual a diferênça?
\DeclareOption{direita}{\newcommand\alinhamento{\raggedleft}}
%%%
\def\alinhamentoCap{\alinhamento}       %%% Capítulos
\def\alinhamentoSec{\alinhamento}       %%% Seções
\def\alinhamentoSubSec{\alinhamento}    %%% Subseções
\def\alinhamentoSubSubSec{\alinhamento} %%% Subsubseções
%%%
%%% Opções de alinhamento do título dos elmentos da parte pré-textual,
%%% a saber: Dedicatória, agradecimentos, resumo em lingua vernácula,
%%% resumo em lingua estrangeira, sumário, lista de figuras e lista
%%% de tabelas.
%%%
\DeclareOption{esquerdaPre}{\newcommand\alinhamentoPre{\raggedright}}
\DeclareOption{centroPre}{\newcommand\alinhamentoPre{\centerline}}%%%Padrão
\DeclareOption{direitaPre}{\newcommand\alinhamentoPre{\raggedleft}}
\def\alinhamentoDedi{\alinhamentoPre}       %%% Dedicatória
\def\alinhamentoAgra{\alinhamentoPre}       %%% Agradecimentos
\def\alinhamentoResumo{\alinhamentoPre}     %%% Resumo
\def\alinhamentoAbt{\alinhamentoPre}        %%% Abstract
\def\alinhamentoSum{\alinhamentoPre}        %%% Sumário
\def\alinhamentoLF{\alinhamentoPre}         %%% Lista de Figuras
\def\alinhamentoLT{\alinhamentoPre}         %%% Lista de Tabelas
%%%
%%% Opções de alinhamento do título dos elmentos da parte pós-textual,
%%% a saber: Refências bibliográficas, Índice Remissivo, Glossário,
%%% Anexos e Apêndices.
%%%
\DeclareOption{esquerdaPos}{\renewcommand\alinhamentoPos{\raggedright}}
\DeclareOption{centroPos}{\newcommand\alinhamentoPos{\center}}%%%Padrão
\DeclareOption{direitaPos}{\renewcommand\alinhamentoPos{\raggedleft}}
\def\alinhamentoRB{\alinhamentoPos}         %%% Refrências Bibliográficas
\def\alinhamentoIR{\alinhamentoPos}         %%% Índice Remissivo
\def\alinhamentoGlo{\alinhamentoPos}        %%% Glossário
\def\alinhamentoAP{\alinhamentoPos}         %%% Apêndices
\def\alinhamentoAN{\alinhamentoPos}         %%% Anexos
%%%
%%% Tipo de arquivo de saída, dvi ou pdf
%%%
\let\@Opdf=0
\DeclareOption{pdf}{\let\@Opdf=1} %%% Pacote ae
%%%
\DeclareOption{pdflm}{\let\@Opdf=2} %%% pacote lmodern
%%%
\DeclareOption{dvi}{\let\@Opdf=3} %%% dvi
%%%
\DeclareOption{livre}{\let\@Opdf=4} %%%
%%%
%%% Inclusão de pacotes - opção "moleza"
%%%
\let\@Opmoleza=0
\DeclareOption{moleza}{\let\@Opmoleza=1}
%%%
%%% Essa opção disponibiliza uma série de comandos
%%%
\let\@Opcomandos=0
\DeclareOption{comandos}{\let\@Opcomandos=1}
%%%
%%% Essa opção ativa o pacote Hyperref.
%%%
\let\@Oplinks=0
\DeclareOption{links}{\let\@Oplinks=1}
%%%
%%% Fonte para o cabeçalho - normal (\def\fontecab{\normalfont\normalsize}).
%%%
\let\@Opcab=0
\DeclareOption{normal}{\let\@Opcab=1}
%%%
%%% Fonte para o cabeçalho - ca (\def\fontecab{\sc}).
%%%
\DeclareOption{ca}{\let\@Opcab=2}
%%%
%%% Fonte para o cabeçalho - bf (\def\fontecab{\bfseries}).
%%%
\DeclareOption{bf}{\let\@Opcab=3}
%%%
%%% Fonte para o cabeçalho - sf (\def\fontecab{\sffamily}).
%%%
\DeclareOption{sf}{\let\@Opcab=4}
%%%
%%% Fonte para o cabeçalho - negrito (\def\fontecab{\bfseries\sffamily}).
%%%
\DeclareOption{negrito}{\let\@Opcab=5} %%% Padrão
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Comandos para atribuir fonte para o nível dos capítulos no sumário,%===
%%% incluí-se ai o título dos capítulos, do resumo, do abstract, da    %===
%%% lista de figuras, da lista de tabelas, do sumário, dos apêndices,  %===
%%% dos anexos, das referências bibliográficas e do índice remissívo.  %===
%%% Se um ou mais desses elementos não existir nada é feito.           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\DeclareOption{tsca}{\let\@OpfontesumT=1}
%%%
\DeclareOption{tsnegrito}{\let\@OpfontesumT=2}
%%%
\DeclareOption{tsrm}{\let\@OpfontesumT=3}
%%%
\DeclareOption{tsreto}{\let\@OpfontesumT=4}
%%%
\DeclareOption{original}{\let\@Opsum=1} %%% \tableofcontents da classe report
%%%
\DeclareOption{meuS}{\let\@Opsum=2} %%% (Padrão) \tableofcontents modificado
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                  Valores padrão para a classe Estilo               %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
\ExecuteOptions{centroPre,esquerda,negrito,centroPos,a4paper,12pt,tsca,%===
licenciatura,meuS,oneside,onecolumn,pdf,Eumemeio,abnt,final,openany}   %===
%%%                                                                    %===
%%% \LoadClass[12pt,a4paper]{report} %%% Por precaução, decidi incluir %===
%%%                                  %%% o código neste arquivo.       %===
%%%                                                                    %===
\ProcessOptions  %%% Este singelo comando ativa as opções
%%%
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%      Definindo comandos de etiquetas para a parte pre-textutal     %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Orientador e Co-orientador
%%%
\gdef\@horientador{Orientador}
\gdef\@morientadora{Orientadora}
\gdef\@hcoorientador{Co-orientador}
\gdef\@mcoorientadora{Co-orientadora}
%%%
%%% Tipo de trabalho
%%%
\gdef\@monografia{Monografia de Gradua\c{c}\~{a}o}
\gdef\@especialista{Monografia de Especializa\c{c}\~{a}o}
\gdef\@mestrado{Disserta\c{c}\~{a}o de Mestrado}
\gdef\@tese{Tese de Doutorado}
%%%
%%% Grau do título a ser obitido
%%%
\gdef\@grauB{Bacharel}
\gdef\@grauL{Licenciado}
\gdef\@grauE{Especialista}
\gdef\@grauM{Mestre}
\gdef\@grauD{Doutor}
%%%
%%%========================================================================
%%%========================================================================
%%%                Texto para Capa e Página de rosto                   %===
%%%========================================================================
%%%========================================================================
%%%
%%% Graduação
%%%
\gdef\@textograd{Monografia apresentada à Coor\-de\-na\-ção do
cur\-so de \@curso\ do \@departamento\ do \@instituto\ da
\@universidade\ \emph{Campus}\ \@cidade,
co\-mo re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção do
tí\-tu\-lo de \textbf{\@grauT\ em \@curso.}}
%%%
\gdef\@textogradrosto{Este exemplar corresponde à re\-da\-ção
fi\-nal da mo\-no\-gra\-fia nú\-me\-ro \@controle\ in\-ti\-tu\-la\-da
{\sc\@mtitle}\ de\-vi\-da\-men\-te cor\-ri\-gi\-da
e de\-fen\-di\-da por \textbf{\@autor},\ ma\-trí\-cu\-la\ \@matricula\ e\
a\-pro\-va\-da pe\-la Ban\-ca E\-xa\-mi\-na\-do\-ra.}
%%%
%%% Especialização
%%%
\gdef\@textoEsp{Monografia apresentada à Coor\-de\-na\-ção do
cur\-so de \@curso\ do \@departamento\ do \@instituto,
u\-ni\-da\-de a\-ca\-dê\-mi\-ca da \@universidade\ em
\@cidade, co\-mo re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção
do grau de \textbf{Es\-pe\-ci\-a\-lis\-ta em \@curso.}}
%%%
\gdef\@textoEsprosto{Este exemplar correspon\-de à
re\-da\-ção fi\-nal da mo\-no\-gra\-fia \@mtitle de\-vi\-da\-men\-te
cor\-ri\-gi\-da e de\-fen\-di\-da por \textbf{\@autor} \@matricula e
a\-pro\-va\-da pe\-la Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%% Mestrado
%%%
\gdef\@textoposM{Dissertação apresentada ao Pro\-gra\-ma de
\@programa\ do \@departamento\ do \@instituto\ da \@universidade\
co\-mo re\-qui\-sito par\-ci\-al pa\-ra ob\-ten\-ção do grau
de \@grauT\ em \@diploma.}
%%%
\gdef\@textorostomestrado{Este exemplar corres\-pon\-de à
re\-da\-ção fi\-nal da dis\-ser\-ta\-ção de\-vi\-da\-men\-te
cor\-ri\-gi\-da e de\-fen\-di\-da por \textbf{\@autor}
e apro\-va\-da pe\-la Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%% Doutorado
%%%
\gdef\@textoposD{Tese apresentada ao Pro\-gra\-ma de \@programa\
do \@departamento\ do \@instituto\ da \@universidade\ co\-mo
re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção do grau de \@grauT\
em \@diploma.}
%%%
\gdef\@textorostodoutorado{Este exemplar corres\-pon\-de à
re\-da\-ção fi\-nal da te\-se de\-vi\-da\-men\-te cor\-ri\-gi\-da
e de\-fen\-di\-da por \textbf{\@autor} e apro\-va\-da pe\-la
Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%%========================================================================
%%%========================================================================
%%%                         Prevenindo esquecimentos                   %===
%%%========================================================================
%%%========================================================================
%%%
%%% Se esquecer o Orientador(a)
%%%
\gdef\@esquecido{\textbf{Bunito heim?!!?!?! Parece que não mas tem
Orientador(a).}}
%%%
%%% Se esquecer algum elemento
%%%
\gdef\@indefinido{Você não definiu, defina.}
%%%
%%% Se esquecer as plavras chave
%%%
\gdef\@sempalavras{Jovem!!! Você não inseriu as palavras-chave, mas você é
jovem e forte, vai fazer a fineza de colocá-las aqui, certo?}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%        Definindo, em português, o nome de vários elementos         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\gdef\@agradece{Agradecimentos}
\gdef\@axiomname{Axioma}
\gdef\@conjecturename{Conjectura}
\gdef\@defname{Definição}
\gdef\@lemmaname{Lema}
\gdef\@theoname{Teorema}
\gdef\@propname{Proposição}
\gdef\@corname{Corolário}
\gdef\@proofname{Prova}
\gdef\@figurename{Figura}
\gdef\@tablename{Tabela}
\gdef\@equationame{Equação}
\gdef\@chaptername{Capítulo}
\gdef\@sectionname{Seção}
\gdef\@appendixname{Apêndice}
\gdef\@pagename{página}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                          Identificação do trabalho                 %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Nome da Instituição (Em geral Universidade, mas pode ser CEFET,...)
%%%
\def\universidade#1{\gdef\@universidade{#1}}
\def\@universidade{Universidade Federal Rural do Rio de Janeiro}
%%%
%%% Nome do Instituto ou Centro
%%%
\def\instituto#1{\gdef\@instituto{#1}}
\def\@instituto{Instituto Multidisciplinar}
%%%
%%% Nome do Departamento
%%%
\def\departamento#1{\gdef\@departamento{#1}}
\def\@departamento{Departamento de Tecnologias e Linguagens}
%%%
%%% Nome do Curso de graduação ou Especialização
%%%
\def\curso#1{\gdef\@curso{#1}}%%%
\def\@curso{Matemática}
%%%
%%% Nome do Programa de Pos-graduação
%%%
\def\programa#1{\gdef\@programa{#1}}%%%
\def\@programa{\@indefinido}
%%%
%%% Área do título
%%%
\def\diploma#1{\gdef\@diploma{#1}}%%%
\def\@diploma{\@indefinido}
%%%
%%% Cidade da Instituição.
%%%
\def\cidade#1{\gdef\@cidade{#1}}%%%
\def\@cidade{Nova Iguaçu}
%%%
%%% Estado da Instituição
%%%
\def\estado#1{\gdef\@estado{#1}}%%%
\def\@estado{RJ}
%%%
%%% Identficação do Autor
%%%
\def\autor#1{\gdef\@autor{#1}}
\def\@autor{\@indefinido}
%%%
%%% Identficação do Autor - Matrícula
%%%
\def\matricula#1{\gdef\@matricula{#1}}
\def\@matricula{\@indefinido}
%%%
%%% Identficação do Autor - Matrícula
%%%
\def\controle#1{\gdef\@controle{#1}}
\def\@controle{\@indefinido}
%%%
%%%
%%% Título do Trabalho - Esse comando já existe, mas o redefini.
%%%
\def\title#1{\Huge\gdef\@title{#1}}
\def\@title{\@indefinido}
%%%
%%% Esse segundo comando é para o texto da folha de rosto
%%%
\def\mtitle#1{\Huge\gdef\@mtitle{#1}}
\def\@mtitle{\@indefinido}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                        Orientador(a) e Banca                       %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%    Se for Doutor
%%%
\let\@mostraorientador=0
\let\@mostraorientadorteste=0
\let\@mostraorientadormp=0
\def\orientador{\@ifnextchar [%%%
{\@Dorientador}{\@Dorientador[\@empty]}}
\def\@Dorientador[#1]#2{%%%
   \ifx#1\@empty
      \let\@mostraorientador=1
      \let\@mostraorientadorteste=1
      \gdef\@orientadortitle{Prof. D. sc.}
   \else
      \let\@mostraorientador=2      %%% Só para controle
      \let\@mostraorientadormp=1    %%% Só para fazer a impressão correta
      \let\@mostraorientadorteste=1 %%% Só para controle
      \gdef\@orientadortitle{Profa. D. sc.}
   \fi
   \gdef\@orientador{#2}}
\def\@orientador{\@indefinido}
%%%
%%%    Se for Mestre
%%%
\let\@mostraorientadorm=0
\let\@mostraorientadormteste=0
\def\orientadorm{\@ifnextchar [%%%
{\@Morientadorm}%%%
{\@Morientadorm[\@empty]}}
   \def\@Morientadorm[#1]#2{%%%
   \ifx#1\@empty
      \let\@mostraorientadorm=1
      \let\@mostraorientadormteste=1
      \gdef\@orientadormtitle{Prof. Msc.}
   \else
      \let\@mostraorientadorm=2      %%% Só para controle
      \let\@mostraorientadormteste=1 %%% Só para controle
      \gdef\@orientadormtitle{Profa. Msc.}
   \fi
   \gdef\@orientadorm{#2}}
\def\@orientadorm{\@indefinido}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                            Co-Orientador(a)                        %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%    Se for Doutor
%%%
\let\@mostracoorientador=0
\let\@mostracoorientadorP=0 %%%
\def\coorientador{\@ifnextchar [%%%
{\@Dcoorientador}{\@Dcoorientador[\@empty]}}
   \def\@Dcoorientador[#1]#2{%%%
   \ifx#1\@empty
      \let\@mostracoorientador=1
      \let\@mostracoorientadorP=1
      \gdef\@coorientadortitle{Prof. D. sc.}
   \else
      \let\@mostracoorientadorP=1
      \let\@mostracoorientador=2
      \gdef\@coorientadortitle{Profa. D. sc.}
   \fi
\gdef\@coorientador{#2}}
%%%
%%%    Se for Mestre
%%%
\let\@mostracoorientadorm=0
\let\@mostracoorientadormteste=0
\def\coorientadorm{\@ifnextchar [%%%
{\@Mcoorientadorm}{\@Mcoorientadorm[\@empty]}}
\def\@Mcoorientadorm[#1]#2{%%%
   \ifx#1\@empty
      \let\@mostracoorientadorm=1
      \let\@mostracoorientadormteste=1
      \gdef\@coorientadormtitle{Prof. Msc.}
   \else
      \let\@mostracoorientadormteste=1
      \let\@mostracoorientadorm=2
      \gdef\@coorientadormtitle{Profa. Msc.}
   \fi
\gdef\@coorientadorm{#2}}
%%%========================================================================
%%%       Fim das definições para Orientador(a) e Co-Orientador(a)     %===
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Definindo o tipo de texto de saída                   %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Definindo o tipo de texto de saída, conforme informações prestadas
%%%
\def\@tipodt{%
   \if\@escolha0
      \@monografia
   \else
      \if\@escolha1
         \@monografia
      \else
         \if\@escolha2
            \@especialista
         \else
            \if\@escolha3
               \@mestrado
            \else
               \if\@escolha4
                  \@tese
               \fi
            \fi
         \fi
      \fi
   \fi
}
%%%
%%% Ajustando o grau do título no texto de saída
%%%
\def\@grauT{%
   \if\@escolha0
      \@grauL
   \else
      \if\@escolha1
         \@grauB
      \else
         \if\@escolha2
            \@grauE
         \else
            \if\@escolha3
               \@grauM
            \else
               \if\@escolha4
                  \@grauD
               \fi
            \fi
         \fi
      \fi
   \fi
}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                   Definições relativas a datas                     %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\gdef\data{\@cidade, \today}     %%% Imprime a data com endereço
\def\grandedia#1{\gdef\@grandedia{#1}}
\def\@grandedia{\data}           %%% Data da defesa
\def\dia{\number\day\space}      %%% Imprime o dia da compilação - número
\def\mes{\the\month\space}       %%% Imprime o mês da compilação - número
\def\mesn{\ifcase\month\or       %%% Imprime o mês da compilação - nome
   Janeiro\or Fevereiro\or Março\or Abril\or Maio\or Junho\or
   Julho\or Agosto\or Setembro\or Outubro\or Novembro\or
   Dezembro\fi\space}
\def\ano{\number\year\space}     %%% Imprime o ano da compilação - número
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Os comandos definidos até aqui prestam-se a coletar informações    %===
%%% para compor os vários elementos do trabalho.                       %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                    A definição do comando \capa                    %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\tipo}{%%%
   \begin{minipage}{\textwidth}
   \begin{center}
   \if\@escolha0
      \@monografia
      \else
         \if\@escolha1
            \@monografia
            \else
               \if\@escolha2
                  \@especialista
                  \else
                     \if\@escolha3
                        \@mestrado
                        \else
                        \@tese
                     \fi
               \fi
         \fi
   \fi
   \end{center}
   \end{minipage}\\
   \if\@escolha0\
      Licenciatura em \@curso
      \else
         \if\@escolha1
            Bacharelado em \@curso
            \else
               \if\@escolha2
                  Especialização em \@curso
                  \else
                  \@programa
               \fi
         \fi
   \fi
}%%% Fim da definição do comando tipo
\def\fontecapa{\sc\large} %%% Fonte da capa
\def\capa{\if@openright\cleardoublepage\else\clearpage\fi%%%
   \thispagestyle{empty}
   \vspace*{-4cm}
   \begin{singlespace}
   \begin{center}
      %%%
      %%% Logomarca da Instituição, se existir!!!
      %%%
      \begin{center}
         \IfFileExists{logotipo.tex}{\def\clogotipo{logotipo.tex}
         \input\clogotipo}{}
      \end{center}
         \fontecapa\@universidade\\
         \@instituto\\
         \@departamento
      \vskip 35mm
      \tipo %%% Definido acima, ajusta identificação do trabalho
      \vskip 35mm
      {\fontecap \@title}
      \vskip\baselineskip
      \@autor
      \vfill
      \@cidade-\@estado\\
      \ano
   \end{center}
\end{singlespace}\newpage
}
%%%
%%%========================================================================
%%%     Fim da definição do comando \capa, o qual cria a Capa          %===
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Página de Apresentação - Folha de rosto              %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\segundo#1{\gdef\@segundo{#1}}
\def\@segundo{Segundo Membro da Banca}
%%%
\def\terceiro#1{\gdef\@terceiro{#1}}
\def\@terceiro{Terceiro Membro da Banca}
%%%
%%%
%%%
\newlength\Trosto %%% Largura do texto na página de rosto.
\setlength\Trosto{0.65\textwidth}
%%%
\newlength\Lrosto %%% Comprimento da linha sobre o nome do orientador/
%%%                   coorientador na página de rosto.
\setlength\Lrosto{\Trosto}
\newlength\Erosto %%% Espessura da linha sobre o nome do orientador e
%%%                   coorientador na página de rosto.
\setlength\Erosto{0.7pt}
\def\rosto{\if@openright\cleardoublepage\else\clearpage\fi%%%
\thispagestyle{empty}
%%% \setcounter{page}{1} %%% Esse comando faz a capa não ser contada,
%%% por isso o retirei
\begin{singlespace}
\begin{center}
   {\fontecap\@title}
   \vskip 30mm
   \begin{flushright}
      \begin{minipage}{\Trosto}
         \if\@escolha0
            \normalfont\@textograd
         \else
            \if\@escolha1
               \normalfont\@textograd
            \else
               \if\@escolha2
                  \normalfont\@textoEsp
               \else
                  \if\@escolha3
                     \normalfont\@textoposM
                  \else
                     \normalfont\@textoposD
                  \fi
               \fi
            \fi
         \fi
      \end{minipage}
   \end{flushright}
   \vskip 1cm
   \begin{flushright}
      \begin{minipage}{\Trosto}
         \if\@escolha0 \normalfont\@textogradrosto
         \else
            \if\@escolha1
               \normalfont\@textogradrosto
            \else
               \if\@escolha2
                  \normalfont\@textoEsprosto
               \else
                  \if\@escolha3
                     \normalfont\@textorostomestrado
                  \else
                     \normalfont\@textorostodoutorado
                  \fi
               \fi
            \fi
         \fi
      \end{minipage}
      \vskip 0.5cm
      \@grandedia.  %%% Data da defesa
      \vskip 1cm
%%%
%%%========================================================================
%%%    Ajustando a designação do Orientador(a) Doutor(a) - Prontinho   %===
%%%========================================================================
%%%
      \begin{minipage}{\Trosto}
      \hspace{-4.5cm}{\sc Banca Examinadora:}\vskip 0.5cm
      \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome do Orientador
      \begin{center}
         \if\@mostraorientador1
         \vspace{-0.5cm}
         \@orientadortitle\ \@orientador\\
         \vspace{-0.1cm} \@horientador
         \else
            \if\@mostraorientador2
               \vspace{-0.5cm}
               \@orientadortitle\ \@orientador\\
               \vspace{-0.1cm} \@morientadora
               \else
         \fi\fi
         \if\@mostraorientadorm1
         \vspace{-0.5cm}
         \@orientadormtitle\ \@orientadorm\\
         \vspace{-0.1cm} \@horientador
         \else
            \if\@mostraorientadorm2
               \vspace{-0.5cm}
               \@orientadormtitle\ \@orientadorm\\
               \vspace{-0.1cm} \@morientadora
               \else
         \fi\fi
      \end{center}
%%%
%%%=================================
%%%   Prevenindo esquecimentos   %%%
%%%=================================
%%%
         \if\@mostraorientador0
            \if\@mostraorientadormteste0 \@esquecido \fi
         \fi
         \vskip\baselineskip
%%%
%%%========================================================================
%%%            Co-orientador(a) Doutor(a) - Prontinho                  %===
%%%========================================================================
%%%
         \if\@mostracoorientadorP1
         \rule{\Lrosto}{\Erosto} %%% Linha sobre o nome do Co-orientador
            \begin{center}
               \vspace{-0.5cm}
               \if\@mostracoorientador1
                  \@coorientadortitle\ \@coorientador\\
                  \vspace{-0.1cm} \@hcoorientador
               \else
                  \@coorientadortitle\ \@coorientador\\
                  \vspace{-0.1cm} \@mcoorientadora
               \fi
            \end{center}
         \fi
%%%
%%%========================================================================
%%%               Co-orientador(a) Mestre - Prontinho                  %===
%%%========================================================================
%%%
         \if\@mostracoorientadormteste1
         \rule{\Lrosto}{\Erosto}
            \begin{center}
            \vspace{-0.5cm}
               \if\@mostracoorientadorm1
                  \@coorientadormtitle\ \@coorientadorm\\
                  \vspace{-0.1cm} \@hcoorientador
               \else
                  \@coorientadormtitle\ \@coorientadorm\\
                  \vspace{-0.1cm} \@mcoorientadora
               \fi
             \end{center}
         \fi
      %%% Segundo componente da banca
      \vskip 0.5cm
      \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
      \begin{center}\vspace{-0.5cm}\@segundo\end{center}
      \vskip 1cm
      %%% Terceiro componente da banca
      \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
      \begin{center}\vspace{-0.5cm}\@terceiro\end{center}
      \end{minipage}
   \end{flushright}
%%%
%%%========================================================================
%%%           Fim da folia com Orientador(a) e Co-Orientador(a)        %===
%%%========================================================================
%%%
   \vfill
   \@cidade-\@estado\\
   \ano
\end{center}
\end{singlespace}
\newpage}
%%%
%%%========================================================================
%%% Fim da definição do comando \rosto, o qual cria a página de rosto
%%%========================================================================
%%%
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
  \if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                             Dedicatória                            %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\font\caligrafica=callig15.mf  scaled 3000 %%% Fonte caligráfica
%%%
\newcommand{\dedi}{\Huge\caligrafica\alinhamentoDedi{Dedicatória}}
\def\dedico{\Esimples\itshape%%%
   \if@openright\cleardoublepage\else\clearpage\fi
   \thispagestyle{empty}
   ~\\
   \vfill
   \begin{center}
      {\dedi}
   \end{center}
   \vskip 7mm
   \begin{flushright}
      \begin{minipage}{100mm}}
         \def\enddedico{\normalfont
      \end{minipage}
   \end{flushright}\newpage
}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                           Agradecimentos                           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\agrada}{\Huge\caligrafica\alinhamentoAgra{Agradecimentos}}
\def\agradece{\Esimples%%%
   \if@openright\cleardoublepage\else\clearpage\fi
   \thispagestyle{empty}
   \begin{center}
      {\agrada}
      \vskip 13mm
   \end{center}}
   \def\endagradece{\normalfont
   \newpage
}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                               Epígrafe                             %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\epigrafe}[2]{%%%
 {\footnotesize%%%
 \begin{flushright}%%%
 \begin{minipage}{0.7\textwidth}%%%
 #1
 \end{minipage}\\
 \textit{#2}%%%
 \end{flushright}}}
%%%========================================================================
\newcommand*\chaptermark[1]{}
\newcommand*\apendicemark[1]{}
\newcommand*\anexomark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {apendice}
\newcounter {anexo}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \theapendice {Apêndice\space\@Alph\c@apendice}
\renewcommand \theanexo {Anexo\space\@Roman\c@anexo}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\@apendiceapp{\nomedoapendice}
\newcommand\@anexoapp{\nomedoanexo}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Comandos para atribuir fonte para o nível dos capítulos no sumário,%===
%%% incluí-se ai o título dos capítulos, do resumo, do abstract, da    %===
%%% lista de figuras, da lista de tabelas, do sumário, dos apêndices,  %===
%%% dos anexos, das referências bibliográficas e do índice remissívo.  %===
%%% Se um ou mais desses elementos não existir nada é feito.           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\if\@OpfontesumT1 %%% Opção - tsca
  \def\fontesumT{\sc}
  \else
     \if\@OpfontesumT2 %%% Opção - tsnegrito
        \def\fontesumT{\sffamily\bfseries}
        \else
           \if\@OpfontesumT3 %%% Opção - tsrm
              \def\fontesumT{\large\rm\bfseries}
                 \else
                    \if\@OpfontesumT4 %%% Opção - tsreto
                       \def\fontesumT{\large\sf}
                    \fi
           \fi
     \fi
\fi
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%      Comandos para atribuir fonte para o título dos capítulos      %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\fontecap{\Huge\sffamily\bfseries} %%% Fonte do Título dos capítulos
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                      Formatação dos Capítulos:                     %===
%%%            seccionamento definido pelo comando \chapter            %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\capsum}{\fontesumT}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi%%%
                    \thispagestyle{empty}\global\@topnum\z@%%%
                    \@afterindenttrue\secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \refstepcounter{chapter}%%%
                       \typeout{\@chapapp\space\thechapter.}%%%
                       \addcontentsline{toc}{chapter}%%%
                       {\capsum\protect\numberline{\thechapter}#1}%%%
                    \else
                       \addcontentsline{toc}{chapter}{#1}%%%
                    \fi
                    \chaptermark{#1}%%%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%%%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%%%
                    \if@twocolumn
                       \@topnewpage[\@makechapterhead{#2}]%%%
                    \else
                       \@makechapterhead{#2}\@afterheading%%%
                    \fi}
\def\@makechapterhead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \fontecap\alinhamentoCap
   \ifnum \c@secnumdepth >\m@ne
      \@chapapp\space \thechapter
      \par\nobreak
      \vskip 20\p@
   \fi
   \interlinepenalty\@M
   \protect\alinhamentoCap{\fontecap #1}\par\nobreak %%% Controla o
   %%% posicionamento horizontal do título de capítulos.
\vskip 40\p@}}
\def\@schapter#1{\if@twocolumn
                    \@topnewpage[\@makeschapterhead{#1}]%%%
                 \else
                    \@makeschapterhead{#1}\@afterheading
                 \fi}
\def\@makeschapterhead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \alinhamentoCap\fontecap
   \interlinepenalty\@M
   #1\par\nobreak \vskip 40\p@}}
%%%
%%%========================================================================
%%%               A definição do \chapter termina aqui                 %===
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                        Formatação dos Apêndice:                    %===
%%%            seccionamento definido pelo comando \apendice           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand\apendice{\if@openright\cleardoublepage\else\clearpage\fi%%%
%\renewcommand \theapendice {\@Alph\c@apendice}
\fancyhf{}
\fancyhead{\sffamily\bfseries\theapendice\hfill \thepage}
\setcounter{table}{0}
\setcounter{figure}{0}
\renewcommand \thetable{\@Alph\c@apendice.\@arabic\c@table}
\renewcommand \thefigure{\ifnum \c@apendice>\z@ \@Alph\c@apendice.\fi \@arabic\c@figure}
                    \thispagestyle{empty}\global\@topnum\z@%%%
                    \@afterindentfalse\secdef\@apendice\@sapendice}
\def\@apendice[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \refstepcounter{apendice}%%%
                       \typeout{\@apendiceapp\space\theapendice.}%%%
                       \addcontentsline{toc}{chapter}%%%
                       {\fontesumT\protect\numberline{\theapendice}#1}%%% Fonte no sumário
                    \else
                       \addcontentsline{toc}{chapter}{#1}%%%
                    \fi
                    \apendicemark{#1}%%%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%%%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%%%
                    \if@twocolumn
                       \@topnewpage[\@makeapendicehead{#2}]%%%
                    \else
                       \@makeapendicehead{#2}\@afterheading%%%
                    \fi}
\def\@makeapendicehead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \raggedright \normalfont
   \ifnum \c@secnumdepth >\m@ne
      \fontecap\alinhamentoAN{\space \theapendice}  %%% anexo anexo no capitulo
      \par\nobreak
      \vskip 20\p@
   \fi
   \interlinepenalty\@M
   \alinhamentoAN{\fontecap #1}\par\nobreak %%% Controla o
   %%% posicionamento horizontal do título de capítulos.
\vskip 40\p@}}
\def\@sapendice#1{\if@twocolumn
                    \@topnewpage[\@makesapendicehead{#1}]%%%
                 \else
                    \@makesapendicehead{#1}\@afterheading
                 \fi}
\def\@makesapendicehead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \raggedright
   \normalfont
   \interlinepenalty\@M
   \fontecap #1\par\nobreak
\vskip 40\p@}}
%\newcommand\apendice{\if@openright\cleardoublepage\else\clearpage\fi%%%
%                    \thispagestyle{empty}\global\@topnum\z@%%%
%                    \@afterindentfalse\secdef\@apendice\@sapendice}
%\def\@apendice[#1]#2{\ifnum \c@secnumdepth >\m@ne
%                       \refstepcounter{apendice}%%%
%                       \typeout{\@apendiceapp\space\theapendice.}%%%
%                       \addcontentsline{toc}{chapter}%%%
%                       {\fontesumT\protect\numberline{\theapendice}#1}%%% Fonte no sumário
%                    \else
%                       \addcontentsline{toc}{chapter}{#1}%%%
%                    \fi
%                    \apendicemark{#1}%%%
%                    \addtocontents{lof}{\protect\addvspace{10\p@}}%%%
%                    \addtocontents{lot}{\protect\addvspace{10\p@}}%%%
%                    \if@twocolumn
%                       \@topnewpage[\@makeapendicehead{#2}]%%%
%                    \else
%                       \@makeapendicehead{#2}\@afterheading%%%
%                    \fi}
%\def\@makeapendicehead#1{\vspace*{50\p@}%%%
%   {\parindent \z@ \fontecap\alinhamentoCap
%   \ifnum \c@secnumdepth >\m@ne
%      \@apendiceapp\space \theapendice
%      \par\nobreak
%      \vskip 20\p@
%   \fi
%   \interlinepenalty\@M
%   \protect\alinhamentoCap{\fontecap #1}\par\nobreak %%% Controla o
%   %%% posicionamento horizontal do título de capítulos.
%\vskip 40\p@}}
%\def\@sapendice#1{\if@twocolumn
%                    \@topnewpage[\@makesapendicehead{#1}]%%%
%                 \else
%                    \@makesapendicehead{#1}\@afterheading
%                 \fi}
%\def\@makesapendicehead#1{\vspace*{50\p@}%%%
%   {\parindent \z@ \alinhamentoCap\fontecap
%   \interlinepenalty\@M
%   #1\par\nobreak \vskip 40\p@}}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                        Formatação dos anexos:                      %===
%%%            seccionamento definido pelo comando \anexo              %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand\anexo{\if@openright\cleardoublepage\else\clearpage\fi%%%
\setcounter{table}{0}
\setcounter{figure}{0}
\renewcommand \thetable{\@Roman\c@anexo.\@arabic\c@table}
\renewcommand \thefigure{\ifnum \c@anexo>\z@ \@Roman\c@anexo.\fi \@arabic\c@figure}
                    \thispagestyle{empty}\global\@topnum\z@%%%
                    \@afterindentfalse\secdef\@anexo\@sanexo}
\def\@anexo[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \refstepcounter{anexo}%%%
                       \typeout{\@anexoapp\space\theanexo.}%%%
                       \addcontentsline{toc}{chapter}%%%
                       {\fontesumT\protect\numberline{\theanexo}#1}%%% Fonte no sumário
                    \else
                       \addcontentsline{toc}{chapter}{#1}%%%
                    \fi
                    \anexomark{#1}%%%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%%%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%%%
                    \if@twocolumn
                       \@topnewpage[\@makeanexohead{#2}]%%%
                    \else
                       \@makeanexohead{#2}\@afterheading%%%
                    \fi}
\def\@makeanexohead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \raggedright \normalfont
   \ifnum \c@secnumdepth >\m@ne
      \fontecap\alinhamentoAN{\space \theanexo}  %%% anexo anexo no capitulo
      \par\nobreak
      \vskip 20\p@
   \fi
   \interlinepenalty\@M
   \alinhamentoAN{\fontecap #1}\par\nobreak %%% Controla o
   %%% posicionamento horizontal do título de capítulos.
\vskip 40\p@}}
\def\@sanexo#1{\if@twocolumn
                    \@topnewpage[\@makesanexohead{#1}]%%%
                 \else
                    \@makesanexohead{#1}\@afterheading
                 \fi}
\def\@makesanexohead#1{\vspace*{50\p@}%%%
   {\parindent \z@ \raggedright
   \normalfont
   \interlinepenalty\@M
   \fontecap #1\par\nobreak
\vskip 40\p@}}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Comandos para atribuir fonte para o título das seções e subseções  %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\fontesec{\Large\sffamily\bfseries}
\def\fontesubsec{\large\sffamily\bfseries}
\def\fontesubsubsec{\normalsize\sffamily\bfseries}
\newcommand\section{\@startsection {section}{1}{\z@}%%%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%%%
                                   {2.3ex \@plus.2ex}%%%
                                   {\fontesec\alinhamentoSec}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%%%
                                   {-3.25ex\@plus -1ex \@minus -.2ex}%%%
                                   {1.5ex \@plus .2ex}%%%
                                   {\fontesubsec\alinhamentoSubSec}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%%%
                                   {-3.25ex\@plus -1ex \@minus -.2ex}%%%
                                   {1.5ex \@plus .2ex}%%%
                                   {\fontesubsubsec\alinhamentoSubSubSec}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%%%
                                   {3.25ex \@plus1ex \@minus.2ex}%%%
                                   {-1em}{\fontesubsubsec}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%%%
                                   {3.25ex \@plus1ex \@minus .2ex}%%%
                                   {-1em}{\fontesubsubsec}}
%%%
%%%========================================================================
%%%    A definição dos comandos \section, \subsection, \subsubsection, %===
%%%            \paragraph e \subparagraph termina aqui.                %===
%%%========================================================================
%%%
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                 \normalfont\bfseries #1}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Ambiente da classe Estilo para o resumo, nomeado como resumo. Ele  %===
%%% é idêntico ao ambiente titlepage nativo da classe report, apenas   %===
%%% tem algumas especificações a mais.                                 %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\palavras#1{\vskip 3mm \noindent{\fontesumT Palavras-chave:\,\,}#1}%===
                                     %%% Comando para inserir as       %===
                                     %%% Palavras-chave                %===
\newcommand\nomeresumo{Resumo}       %%% Nome do resumo                %===
\newcommand{\refonte}{\fontesumT}    %%% Fonte do título do resumo no  %===
                                     %%% no sumário
\if@compatibility
   \newenvironment{resumo}
      {\if@twocolumn
         \@restonecoltrue\onecolumn
       \else
          \@restonecolfalse\newpage
       \fi
       \null\vfil\Esimples
      \if\@ENPescolha4
            \fancyhead{\fontecab \nomeresumo\dotfill\thepage}
         \else
            \if\@ENPescolha7
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
         \else
            \if\@ENPescolha8
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
         \else
            \if\@ENPescolha9
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
      \fi\fi\fi\fi
       {\fontecap\protect\alinhamentoResumo \nomeresumo}
       \vskip 23mm
       \addcontentsline{toc}{chapter}{\refonte\nomeresumo}}%%%
       %%% Acrescenta o título do resumo ao sumário.
   {\if@restonecol\twocolumn \else \newpage \fi}
\else
   \newenvironment{resumo}
      {\if@twocolumn
         \@restonecoltrue\onecolumn
      \else
         \@restonecolfalse\newpage
      \fi
      \null\vfil\Esimples
      \if\@ENPescolha4
            \fancyhead{\fontecab \nomeresumo\dotfill\thepage}
         \else
            \if\@ENPescolha7
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
         \else
            \if\@ENPescolha8
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
         \else
            \if\@ENPescolha9
            \fancyhead{\fontecab \nomeresumo \hfill\thepage}
      \fi\fi\fi\fi
      {\fontecap\alinhamentoResumo\nomeresumo}
      \vskip 23mm
      \addcontentsline{toc}{chapter}{\refonte\nomeresumo}}%%%
      %%% Acrescenta o título do resumo ao sumário.
   {\if@restonecol\twocolumn \else \newpage \fi}
\fi
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%          Ambiente resumoE para o abstract na classe Estilo         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\palavrasE#1{\vskip 3mm \noindent{\fontesumT Keywords:\,\,}#1}
                                     %%% Comando para inserir as       %===
                                     %%% Palavras-chave, em inglês     %===
\newcommand\nomeresumoE{Abstract}    %%% Nome do resumo                %===
\if@compatibility
   \newenvironment{resumoE}
      {\if@twocolumn
         \@restonecoltrue\onecolumn
       \else
          \@restonecolfalse\newpage
       \fi
       \null\vfil\Esimples
      \if\@ENPescolha4
         \fancyhead{\fontecab \nomeresumoE\dotfill\thepage}
         \else
            \if\@ENPescolha7
            \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
          \else
             \if\@ENPescolha8
             \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
          \else
             \if\@ENPescolha9
             \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
      \fi\fi\fi\fi
       {\fontecap\alinhamentoAbt\nomeresumoE}
       \vskip 23mm
       \addcontentsline{toc}{chapter}{\refonte\nomeresumoE}}%%%
       %%% Acrescenta o título do abstract ao sumário.
   {\if@restonecol\twocolumn \else \newpage \fi}
\else
   \newenvironment{resumoE}
      {\if@twocolumn
         \@restonecoltrue\onecolumn
      \else
         \@restonecolfalse\newpage
      \fi
      \null\vfil\Esimples
      \if\@ENPescolha4
         \fancyhead{\fontecab \nomeresumoE\dotfill\thepage}
         \else
            \if\@ENPescolha7
            \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
          \else
             \if\@ENPescolha8
             \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
          \else
             \if\@ENPescolha9
             \fancyhead{\fontecab \nomeresumoE \hfill\thepage}
      \fi\fi\fi\fi
      {\fontecap\alinhamentoAbt\nomeresumoE}
      \vskip 23mm
      \addcontentsline{toc}{chapter}{\refonte\nomeresumoE}}%%%
      %%% Acrescenta o título do abstract ao sumário.
   {\if@restonecol\twocolumn \else \newpage \fi}
\fi
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Ambiente abstract padrão da classe report            %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}\item\relax}
               {\endlist}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Ambiente citei para citações, obedece a ABNT         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% O ajuste do espaço entre linhas para espaço simples  é efeito com  %===
%%% o ambiente singlespace do pacote setspace.                         %===
%%%
\newenvironment{citei}%%%
   {\begin{singlespace}\small%%%
   \begin{list}{}{%%%
      \setlength{\listparindent}{0cm}%%%
      \setlength{\itemindent}{\listparindent}%%%
      \setlength{\rightmargin}{0cm}%%%
      \setlength{\leftmargin}{4cm}%%%
      \setlength{\parsep}{0pt}}\item\relax}%%%
   {\end{list}\end{singlespace}}
\if@compatibility
\newenvironment{titlepage}
    {\if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}\setcounter{page}\z@
    }{\if@restonecol\twocolumn \else \newpage \fi}
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\newcommand\appendix{\par\setcounter{chapter}{0}\setcounter{section}{0}%%%
  \gdef\@chapapp{\appendixname}\gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%         O comando \tableofcontents padrão da classe report         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\if\@Opsum1
\newcommand\tableofcontents{%
   \if@twocolumn
     \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \chapter*{\contentsname
      \@mkboth{%
      \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
   \@starttoc{toc}%
   \if@restonecol\twocolumn\fi
}
\else
\if\@Opsum2
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%     Modificando o comando \tableofcontents, que gera o sumário     %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\fontesum{\normalfont\normalsize\sffamily}%%%
                                     %%% Fonte do corpo do sumário
\newcommand{\sumtitsum}{\fontesumT}
\newcommand\tableofcontents{%%%
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \chapter*{\fontecap\alinhamentoSum\contentsname%%% Título do Sumário
   \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
   \if\@ENPescolha1 %%%
      \thispagestyle{empty}
   \else
      \if\@ENPescolha2 %%%
      \fancyhf{}
         \else
            \if\@ENPescolha3 %%%
               \fancyhf{}
         \else
            \if\@ENPescolha4
               \thispagestyle{empty}
               \fancyhead{\fontecab \contentsname\dotfill\thepage}
         \else
            \if\@ENPescolha5
               \thispagestyle{empty}
         \else
            \if\@ENPescolha6
               \thispagestyle{empty}
         \else
            \if\@ENPescolha7
               \thispagestyle{empty}
               \fancyhead{\fontecab \contentsname\hfill\thepage}
         \else
            \if\@ENPescolha8
               \thispagestyle{empty}
               \fancyhead{\fontecab \contentsname\hfill\thepage}
         \else
            \if\@ENPescolha9
               \thispagestyle{empty}
               \fancyhead{\fontecab \contentsname\hfill\thepage}
   \fi\fi\fi\fi\fi\fi\fi\fi\fi
   \addcontentsline{toc}{chapter}{\sumtitsum\contentsname}
   %%% Adiciona o título do Sumário ao sumário.
   {\fontesum\@starttoc{toc}}%%% Aqui insiro a fonte do sumário.
   \if@restonecol\twocolumn\fi
}
\fi\fi
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%  Modificando o comando \listoffigures, que gera a lista de Figuras %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\tlffonte}{\fontesumT}
\newcommand\listoffigures{\fontesum%%%
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \chapter*{\fontecap\alinhamentoLF\listfigurename}%%%
                               %%% Imprime o título da lista de figuras
   \if\@ENPescolha1 %%% Padrão do \LaTeX + pretextual em romanos
      \thispagestyle{empty}
   \else
      \if\@ENPescolha2 %%% Padrão ABNT
      \fancyhf{}
         \else
            \if\@ENPescolha3 %%% Padrão ABNT + Título das seções
               \fancyhf{}
         \else
            \if\@ENPescolha4
               \thispagestyle{empty}
         \else
            \if\@ENPescolha5
               \thispagestyle{empty}
         \else
            \if\@ENPescolha6
               \thispagestyle{empty}
         \else
            \if\@ENPescolha7
               \thispagestyle{empty}
               \fancyhead{\fontecab \listfigurename \hfill\thepage}
   \fi\fi\fi\fi\fi\fi\fi
      \@mkboth{\MakeUppercase\listfigurename}%%%
      {\MakeUppercase\listfigurename}%%%
   \@starttoc{lof}%%%
   \addcontentsline{toc}{chapter}{\tlffonte\listfigurename}
   \if@restonecol\twocolumn\fi \normalfont}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%  Modificando o comando \listoftables, que gera a lista de Tabelas  %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\tltfonte}{\fontesumT}
\newcommand\listoftables{\fontesum%%%
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \chapter*{\fontecap\alinhamentoLT\listtablename}%%%
\if\@ENPescolha1 %%% Padrão do \LaTeX + pretextual em romanos
      \thispagestyle{empty}
   \else
      \if\@ENPescolha2 %%% Padrão ABNT
      \fancyhf{}
         \else
            \if\@ENPescolha3 %%% Padrão ABNT + Título das seções
               \fancyhf{}
         \else
            \if\@ENPescolha4
               \thispagestyle{empty}
               \fancyhead{\fontecab \listtablename \dotfill\thepage}
         \else
            \if\@ENPescolha5
               \thispagestyle{empty}
         \else
            \if\@ENPescolha6
               \thispagestyle{empty}
         \else
            \if\@ENPescolha7
               \thispagestyle{empty}
               \fancyhead{\fontecab \listtablename \hfill\thepage}
   \fi\fi\fi\fi\fi\fi
   \fancyhead{}%%% Evita repetição do títuo da lista de
               %%% tabelas nas página da parte textual.
   \fi
      \@mkboth{\MakeUppercase\listtablename}%%%
         {\MakeUppercase\listtablename}%%%
    \@starttoc{lot}%%%
    \addcontentsline{toc}{chapter}{\tltfonte\listtablename}
    \if@restonecol\twocolumn\fi \normalfont
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                      Referências Bibliográficas                    %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
\newenvironment{thebibliography}[1]
   %%%{\chapter*{\fontecap\alinhamentoRB\bibname}%%%
   {\chapter*{\fontecap\bibname}%%%
   \addcontentsline{toc}{chapter}{\fontesumT\bibname}
%%% Adiciona o título das Referências Bibliográficas ao sumário, mesmo
%%% que se use o Bibtex.
   \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
      {\settowidth\labelwidth{\@biblabel{#1}}%
      \leftmargin\labelwidth
      \advance\leftmargin\labelsep
      \@openbib@code
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
      {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
               \else
                  \@restonecoltrue
                \fi
                \twocolumn[\@makeschapterhead{\alinhamentoIR\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}
                \addcontentsline{toc}{chapter}{\fontesumT\indexname}
                \parindent\z@\parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@\columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%         O pacote babel traduz tudo isso ai automaticamente         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\nomedoapendice{Apêndice}
\newcommand\nomedoanexo{Anexo}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\if@twoside
\else
  %%%\raggedbottom
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\fi
%%%========================================================================
%%%          Um melhor controle para linhas orfãs e/ou viúvas          %===
%%%========================================================================
%%%Para o TeX não deixar linhas orfãs ou viúvas no início da página é  %===
%%%melhor adotar os comandos a seguir que \raggedbottom. O uso deste   %===
%%%fará o TeX deixar de tentar igualar a altura das páginas. Com isso o%===
%%%texto ficará alinhado pelo topo e os parágrafos não serão divididos.%===
\if@twocolumn
%%%  \twocolumn
%%%  \sloppy
%%%  \flushbottom
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\else
  \onecolumn
\fi
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                            Meus comandos                           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
\if\@Opcomandos1
%%%
%%% Alerta
%%%
\newcommand{\alerta}[1]{\textcolor{red}{#1}}
%%%
%%% Comandos para símbolos de conjuntos numéricos
%%%
\def\C{{\ensuremath \mathbb{C}}} %%% Conjunto dos números Complexos
\def\I{{\ensuremath \mathbb{I}}} %%% Conjunto dos números Irracionais
\def\N{{\ensuremath \mathbb{N}}} %%% Conjunto dos números Naturais
\def\P{{\ensuremath \mathbb{P}}} %%% Conjunto dos números Primos
\def\Q{{\ensuremath \mathbb{Q}}} %%% Conjunto dos números Racionais
\def\R{{\ensuremath \mathbb{R}}} %%% Conjunto dos números Reais
\newcommand{\rn}[1][n]{\ensuremath{\mathbb{R}^{#1}}}
\def\Z{{\ensuremath \mathbb{Z}}} %%% Conjunto dos números Inteiros
%%%
%%% Facilidades
%%%
\newcounter{exemplo}[chapter]
\def\theexemplo{\thechapter.\arabic{exemplo}}
\newcommand{\exe}{\noindent \refstepcounter{exemplo} \textbf{Exemplo\,\theexemplo:}\space}
\newcounter{defi}[chapter]
\def\thedefi{\thechapter.\arabic{defi}}
\newcommand{\defi}{{\refstepcounter{defi}\sffamily\bfseries Definição\,\thedefi:}\space}
\newcommand{\emat}[1]{\quad\hbox{e}\quad}
%%% Uma conveniente praticidade para inserir 'e' dentro de ambientes matemáticos
\newcommand{\oumat}[1]{\quad\hbox{ou}\quad}
%%% Uma conveniente praticidade para inserir 'ou' dentro de ambientes matemáticos
\newcommand{\grau}{{\ensuremath{{}^{\mathrm{o}}}}}
%%% Para inserir a notação do grau, a famosa bolinha
\newcommand{\sen}[2][]{\ensuremath{\mbox{sen}^{_{#1}}}
\ensuremath{\left(#2\right)}}
%%% Para a função sen(x)
\newcommand{\Cos}[2][]{\ensuremath{\mbox{cos}^{_{#1}}}
\ensuremath{\left(#2\right)}}
%%% Para a função cos(x)
\newcommand{\tg}[2][]{\ensuremath{\mbox{tg}^{_{#1}}}
\ensuremath{\left(#2\right)}}
%%% Para a função tg(x)
\newcommand{\mmc}[1]{\mbox{mmc}(#1)}  %%% Para o MMC
\newcommand{\mdc}[1]{\mbox{mdc}(#1)}  %%% Para o MDC
\newcommand{\F}[1]{\ensuremath{\mathscr{F}\left[#1\right]}}
%%% Transformada de Fourier
\newcommand{\La}[1]{\ensuremath{\mathscr{L}\left[#1\right]}}
%%% Transformada de Laplace
\def\div#1{\ensuremath{\mbox{div}\left(#1\right)}}
%%% Divergente de um campo F, div(F)
\def\rot#1{\ensuremath{\mbox{rot}\left(#1\right)}}
%%% Rotacional de um campo F, rot(F)
\newcommand{\vetor}[2][n]{\ensuremath{\vec{#2} = %%%
(#2_1,\dots,#2_{#1})}}
%%% Definir comando semelhante para soma de n-termos
\newcommand{\vetors}[2][n]{\ensuremath{#2 = %%%
(#2_1,\dots,#2_{#1})}}
%%% Idem a \vetor, mas sem seta.
\newcommand{\soma}[2][n]{\ensuremath{#2_1+\dots+#2_{#1}}}
%%% Soma de n-termos com índices
%%%
\newcommand{\pot}[2][n]{\ensuremath{#2^1+\dots+#2^{#1}}}
%%% potencia de n-termos
%%%
%%% Notação para a função Maior Inteiro, os comandos \abren e
%%% \fechan são auxiliares.
%%%
\newcommand{\abren}{\ulcorner\hspace{-0.2107cm}\llcorner%%%
\hspace{-0.13cm}\rule{0.3pt}{0.29cm}}
\newcommand{\fechan}{\lrcorner\hspace{-0.2107cm}\urcorner%%%
\hspace{-0.09cm}\rule{0.3pt}{0.29cm}}
%%% Exige AMSfonts
\newcommand{\mint}[1]{\abren\raisebox{1.3pt}{$\,\,#1$}\fechan\,}
%%%
\newcommand{\base}[2][n]{\mbox{\sc #2} = \{#2_1,\dots,#2_{#1}\}}
%%%
\newcommand{\inter}[2]{\ensuremath{\langle#1,#2\rangle}}
%%%
\newcommand{\nor}[2][]{\ensuremath{\parallel#2\parallel_{#1}}}
%%%
\newcommand{\sob}[2][def]{\ensuremath{\stackrel{\mathrm{#1}}{#2}}}
%%% Esse comando empilha coisas
\newcommand{\comp}[2]{\ensuremath{(\mathrm{#1}\hspace{-0.10cm}%%%
\circ\hspace{-0.07cm}\mathrm{#2})}}
%%%
\newcommand{\unidade}[2]{\ensuremath{#1\,\mathrm{#2}}}
%%%
%%%\makeatletter %%% Só é necessário se o bloco de comandos
                 %%% abaixo for incluído no preâmbulo
\def\abaixo{%%%
\@ifnextchar[{\@underbracket}{\@underbracket [\@bracketheight]}}
\def\@underbracket[#1]{%%%
\@ifnextchar[{\@under@bracket[#1]}{\@under@bracket[#1][0.4em]}}
\def\@under@bracket[#1][#2]#3{%\message {Underbracket: #1,#2,#3}
\mathop{\vtop{\m@th \ialign {##\crcr $\hfil \displaystyle {#3}\hfil$%%%
    \crcr \noalign {\kern 3\p@ \nointerlineskip }\upbracketfill {#1}{#2}
    \crcr \noalign {\kern 3\p@ }}}}\limits}
\def\upbracketfill#1#2{$\m@th \setbox \z@ \hbox {$\braceld$}
                  \edef\@bracketheight{\the\ht\z@}\bracketend{#1}{#2}
                  \leaders \vrule \@height #1 \@depth \z@ \hfill
                  \leaders \vrule \@height #1 \@depth \z@ \hfill
                  \bracketend{#1}{#2}$}
\def\bracketend#1#2{\vrule height #2 width #1\relax}
\def\acima{\@ifnextchar[{\@overbracket}{\@overbracket[\@bracketheight]}}
\def\@overbracket[#1]{\@ifnextchar[{\@over@bracket[#1]}
                  {\@over@bracket[#1][0.3em]}}
\def\@over@bracket[#1][#2]#3{%\message {Overbracket: #1,#2,#3}
   \mathop {\vbox {\m@th \ialign {##\crcr \noalign {\kern 3\p@
   \nointerlineskip }\downbracketfill {#1}{#2}
        \crcr \noalign {\kern 3\p@ }
        \crcr  $\hfil \displaystyle {#3}\hfil$\crcr} }}\limits}
\def\downbracketfill#1#2{$\m@th \setbox \z@ \hbox {$\braceld$}
    \edef\@bracketheight{\the\ht\z@}\downbracketend{#1}{#2}
    \leaders \vrule \@height #1 \@depth \z@ \hfill
    \leaders \vrule \@height #1 \@depth \z@ \hfill
\downbracketend{#1}{#2}$}
\def\downbracketend#1#2{\vrule depth #2 width #1\relax}
%%%\makeatother %%% Só é necessário se o bloco de comandos
                %%% acima for incluído no preâmbulo
\fi %%% Fim do if dos comandos
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%           Meus pacotes, todos com compilação condicional           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%          Esses pacotes são desejáveis para a compilação
%%%
%%%========================================================================
\IfFileExists{babel.sty}{\RequirePackage[brazil]{babel}}{}             %===
%%%========================================================================
%%% Este pacote possibilita a geração de documento em Português. Ele   %===
%%% oferece suporte a muitas línguas. A opção [brazil] invoca o suporte%===
%%% ao português brasileiro, assim, além de muitos termos serem        %===
%%% traduzidos automaticamente o algoritmo de hifenização trabalhará   %===
%%% com as regras do nosso português.                                  %===
%%% Alguns caracteres podem ter significado especial considerados      %===
%%% ``ativos''. No caso de Português, " (aspas) é um destes caracteres %===
%%% e isso causa incompatibilidade com recusos de outros pacotes, um   %===
%%% exemplo é o uso de aspas em ambientes do pacote xy.                %===
%%%                                                                    %===
%%%========================================================================
\IfFileExists{inputenc.sty}{\RequirePackage[latin1]{inputenc}}{}       %===
%%%========================================================================
%%% O pacote inputenc adiciona suporte a caracter ISO-8859-1 através do%===
%%% parâmetro latin1. Assim é possível acentuar um caracter diretamente%===
%%% no arquivo .tex sem necessidade de construções como \c{c} para     %===
%%% obter um ç, ou \'{e} para obter é e assim por diante.              %===
%%%                                                                    %===
\if\@Opdf1
%%%========================================================================
%%%                   Uso de Fonte com Encode T1                       %===
%%%========================================================================
\IfFileExists{ae.sty}{\RequirePackage{ae}}{}                           %===
%%%========================================================================
%%% Se o encode da fonte não provê acesso a caracteres acentuados (como%===
%%% é o caso do encode OT1, padrão do LaTeX) então o TeX gera estes    %===
%%% caracteres sobrepondo o caracter base ao caracter do acento. O     %===
%%% algoritmo de  hifenização, não hifeniza palavras formadas dessa    %===
%%% forma.
%%% Se o encode provê acesso direto a caracteres acentuados, como o    %===
%%% encode T1, estes caracteres são usados diretamente sem prejuízo    %===
%%% do algoritmo de hifenização. O uso de encoding T1 é fundamental    %===
%%% para a correta hifenização em Português devido aos caracteres      %===
%%% acentuados como é, ã,ó, ô,.... etc.
%%% Note que trata-se da mesma fonte, por padrão a Computer Modern-CM, %===
%%% apenas o que muda é o seu encode, isto é, a disponibilidade/ordem  %===
%%% dos caracteres dentro da mesma.
%%% No caso de PDF, usando-se pdflatex (para gerar pdf direto do tex) o%===
%%% uso de fontes CM Type 1 com encoding T1 ainda não está disponível. %===
%%% O uso de \usepackage[T1]{fontenc} com o pdflatex resulta em fontes %===
%%% bitmapped, gerando uma péssima visualização na tela. Uma solução é %===
%%% usar o pacote ae (Almost European Computer Modern) que simula o    %===
%%% encode T1 mantendo o uso de fontes Type 1.
%%% Bom, mas se você é caprichoso mesmo e entende um cadin de tex      %===
%%% recomendo usar fonte lmodern ou cm-super em vez do pacote ae       %===
%%% lmodern (http://www.ctan.org/tex-archive/fonts/ps-type1/lm/)       %===
%%% cm-super (http://www.ctan.org/tex-archive/fonts/ps-type1/cm-super/)%===
%%%========================================================================
%%%    Pacote geometry - controle de margens, fácil e sofisticado      %===
%%%========================================================================
\IfFileExists{geometry.sty}{\RequirePackage[pdftex]{geometry}}{}
%\geometry{inner=4cm,outer=3cm,top=2.5cm,bottom=2.5cm}
\geometry{inner=3cm,outer=2cm,top=3cm,bottom=2cm} %%% Valores do DTL
%%%========================================================================
%%%                Pacote graphicx - Inclusão de imagens               %===
%%%========================================================================
\IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}}{}
%%% Formatos aceitos:png, .pdf, .jpg,.mps (METAPOST) e .tif nesta ordem%===
%%% — mas não .eps.                                                    %===
\DeclareGraphicsRule{*}{mps}{*}{}    %%% permite a utilização de
                                     %%% gráficos MetaPost com pdflatex.
\fi %%% Fim do if da opção pdf - ae
%%%
%%% Fonte lmodern
%%%
\if\@Opdf2
\IfFileExists{fontenc.sty}{\RequirePackage[T1]{fontenc}}{}
\IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}}{}
\IfFileExists{lmodern.sty}{\RequirePackage{lmodern}}{}
\IfFileExists{mathpazo.sty}{\RequirePackage[osf]{mathpazo}}{}
\IfFileExists{helvet.sty}{\RequirePackage[scaled=0.95]{helvet}}{}
\IfFileExists{geometry.sty}{\RequirePackage[pdftex]{geometry}}{}
\geometry{inner=4cm,outer=3cm,top=2.5cm,bottom=2.5cm}
%%%========================================================================
%%%                Pacote graphicx - Inclusão de imagens               %===
%%%========================================================================
\IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}}{}
%%% Formatos aceitos:png, .pdf, .jpg,.mps (METAPOST) e .tif nesta ordem%===
%%% — mas não .eps.                                                    %===
\DeclareGraphicsRule{*}{mps}{*}{}    %%% permite a utilização de
                                     %%% gráficos MetaPost com pdflatex.
\fi %%% Fim do if para gerar pdf - lmodern
%%%
\if\@Opdf3 %%% Opção para gerar dvi
%%%========================================================================
%%%                   Uso de Fonte com Encode T1                       %===
%%%========================================================================
\IfFileExists{fontenc.sty}{\RequirePackage[T1]{fontenc}}{}             %===
%%%========================================================================
%%% Comentário - Ver comentários do pacote ae na opção pdf.            %===
%%%========================================================================
%%%    Pacote geometry - controle de margens, fácil e sofisticado      %===
%%%========================================================================
\IfFileExists{geometry.sty}{\RequirePackage[dvips]{geometry}}{}%%%
\geometry{inner=4cm,outer=3cm,top=2.5cm,bottom=2.5cm}%%%
%%% Comentário - Ver comentários na opção pdf.                         %===
%%%========================================================================
%%%                Pacote graphicx - Inclusão de imagens               %===
%%%========================================================================
\IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}}{}
\fi %%% Fim do if da opção dvi
\if\@Opdf4\fi %%% Opção livre
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%           Pacotes carregados pela opção "moleza"                   %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\if\@Opmoleza1
%%%
\IfFileExists{xcolor.sty}{\RequirePackage[svgnames,x11names]{xcolor}}{}
%%% Suporte para adicionar cor.                                        %===
\IfFileExists{cancel.sty}{\RequirePackage{cancel}}{}
%%% Cancelamento em expressões matemáticas                             %===
\IfFileExists{mathrsfs.sty}{\RequirePackage{mathrsfs}}{}
%%% Produz os Símbolos para transformadas                              %===
\IfFileExists{colortbl.sty}{\RequirePackage{colortbl}}{}
%%% Supoprte a cor das células de uma tabela.                          %===
\IfFileExists{rotating.sty}{\RequirePackage{rotating}}{}
%%% Suporte girar coisas diversas.                                     %===
\IfFileExists{longtable.sty}{\RequirePackage{longtable}}{}
%%% Tabelas longas em mais de uma página.                              %===
\IfFileExists{boxedminipage.sty}{\RequirePackage{boxedminipage}}{}
%%% Criação de minipáginas, algo muito útil.                           %===
\IfFileExists{wrapfig.sty}{\RequirePackage{wrapfig}}{}
%%% Figuras e tabelas ao lado de texto.                                %===
\IfFileExists{ulem.sty}{\RequirePackage[normalem]{ulem}}{}
%%% Para sublinhar texto                                               %===
\IfFileExists{fancybox.sty}{\RequirePackage{fancybox}}{}
%%% Criação de caixas.                                                 %===
\IfFileExists{fancyvrb.sty}{\RequirePackage{fancyvrb}}{}
%%% Para introduzir material verbatim com muita sofisticação.          %===
\IfFileExists{amsmath.sty}{\RequirePackage{amsmath}}{}
%%% O principal pacote da AMS para suporte matemático.                 %===
\IfFileExists{amsfonts.sty}{\RequirePackage{amsfonts}}{}
%%% Conjunto de fontes da AMS que disponibilizam símbolos matemáticos  %===
\IfFileExists{amssymb.sty}{\RequirePackage{amssymb}}{}
%%% Mais alguns símbolos matemáticos da AMS.                           %===
\IfFileExists{amscd.sty}{\RequirePackage{amscd}}{}
%%% Defini o ambiente CD para confecção de diagramas comutativos       %===
\IfFileExists{amstext.sty}{\RequirePackage{amstext}}{}
%%% Define o comando \text para escrever dentro do modo matemático.    %===
%%% \RequirePackage[amsmath,thref,hyperref]{ntheorem}
%%% Dessa forma  fica incompatível com o amsmath, provocando           %===
%%% desalinhamento da numeração na linha em que ocorreu o comando      %===
%%% \label para marcar uma equação no ambiente align e outros do       %===
%%% pacote amsmath.                                                    %===
\IfFileExists{ntheorem.sty}{\RequirePackage[thref,hyperref]{ntheorem}}{}
%%% Permite definir novos ambientes matemáticos com facilidade.        %===
\IfFileExists{multirow.sty}{\RequirePackage{multirow}}{}
%%% Facilidade para mesclar células de uma tabela                      %===
\IfFileExists{wasysym.sty}{\RequirePackage{wasysym}}{}
%%% Fontes wasy, acrescenta muitos símbolos.                           %===
%%% O pacote lscape define o ambiente landscape o qual gira seu        %===
%%% conteúdo em 90 graus.
\if\@Opdf3
\IfFileExists{lscape.sty}{\RequirePackage[dvips]{lscape}}{}
\else
\IfFileExists{lscape.sty}{\RequirePackage[pdftex]{lscape}}{}
\fi
\IfFileExists{varioref.sty}{\RequirePackage[brazil]{varioref}}{}
%%% Define os comandos \vref e \vpageref                              %===
\IfFileExists{float.sty}{\RequirePackage{float}}{}
%%% Permite maior controle sobre posicionamento de objetos(floats)    %===
%%% ele define o posicionador [H], o qual posiciona mesmo o objeto    %===
%%% na posição Here de qualquer forma, mesmo que a vaca tussa.
\IfFileExists{pifont.sty}{\RequirePackage{pifont}}{}
%%% ZapfDingbats font - Símbolos especiais e interessantes.           %===
\IfFileExists{makeidx.sty}{\RequirePackage{makeidx}}{}
%%% Permite a criação eficiente de índice Remissivo.                  %===
\IfFileExists{url.sty}{\RequirePackage{url}}{}
%%% Serve para introduzir corretamente endereços de páginas.          %===
\IfFileExists{wallpaper.sty}{\RequirePackage{wallpaper}}{}
%%% Faz algumas folias interessantes com imagem em plano de fundo     %===
\IfFileExists{multicol.sty}{\RequirePackage{multicol}}{}
%%% multicol - Talvés a melhor forma de manipulação de multicolunas
%%%
\fi %%% Fim do if dos pacotes
%%%
%%% Opção de fonte times - Primeira opção
%%%
\if\@escolhatimes1
   \IfFileExists{mathptmx.sty}{\RequirePackage{mathptmx}}
   \IfFileExists{helvet.sty}{\RequirePackage[scaled=0.92]{helvet}}
   \IfFileExists{courier.sty}{\RequirePackage{courier}}
\fi
%%%
%%% Opção de fonte times - Segunda opção
%%%
\if\@escolhatimes2
   \IfFileExists{mathptmx.sty}{\RequirePackage{mathptmx}}
   {\IfFileExists{mathptm.sty}{\RequirePackage{mathptm}}
   {\RequirePackage{times}{\renewcommand{\rmdefault}{ptm}}}}
   \IfFileExists{helvet.sty}{\RequirePackage{helvet}}
   {\IfFileExists{helvetic.sty}
   {\RequirePackage{helvetic}}
   {\renewcommand{\rmdefault}{phv}}}
\fi
%%%
%%% Opção links para incluir o pacote hyperref
%%%
\if\@Oplinks1
\if\@Opdf3
\IfFileExists{hyperref.sty}{\RequirePackage[dvips]{hyperref}}{}
   \hypersetup{colorlinks=true,%%% Suporte a cor no documento
   citecolor=blue,%%% Controle da cor das referências, os \cite.
   linkcolor=blue,%%% Controle da cor dos links e do Sumário, o
                  %%% \tableofcontents, \ref, \footnote, etc.
                  %%% Pode-se forçar que determinado link tenha
                  %%% uma cor específica com os comandos locais
                  %%% tipo \textcolor{cor do link}{link}
   urlcolor=blue, %%% cor do \url e \href.
   plainpages=false,
   bookmarksopen=true,
   bookmarksopenlevel=1,
   pdfstartview=FitB,
   bookmarksnumbered=false,
   linktocpage=true}
\else
\IfFileExists{hyperref.sty}{\RequirePackage[pdftex]{hyperref}}{}
%%% Cria links e ajustas uma séries de valores.
   \hypersetup{colorlinks=true,%%% Suporte a cor no documento
   citecolor=blue,%%% Controle da cor das referências, os \cite.
   linkcolor=blue,%%% Controle da cor dos links e do Sumário, o
                  %%% \tableofcontents, \ref, \footnote, etc.
                  %%% Pode-se forçar que determinado link tenha
                  %%% uma cor específica com os comandos locais
                  %%% tipo \textcolor{cor do link}{link}
   urlcolor=blue, %%% cor do \url e \href.
   plainpages=false,
   bookmarksopen=true,
   bookmarksopenlevel=1,
   pdfstartview=FitB,
   bookmarksnumbered=true,
   linktocpage=false}
\fi
\fi %%% Fim do if do hyperref
%%%
%%% Comandos
%%%
\newcommand{\Esimples}{\setstretch{1.0}}%%% Espaço Simples
\newcommand{\Eumemeio}{\setstretch{1.35}}%%% Espaço Um e meio
\newcommand{\Eduplo}{\setstretch{1.7}}%%% Espaço Duplo
%%%
%%% Ambientes
%%%
\newenvironment{Simples}{\begin{spacing}{1.0}}{\end{spacing}}
\newenvironment{Umemeio}{\begin{spacing}{1.35}}{\end{spacing}}
\newenvironment{Duplo}{\begin{spacing}{1.7}}{\end{spacing}}
%%%
%%%
%%% Definição da fonte do cabeçalho - comando \fontecab
%%%
\if\@Opcab1  %%% Opção - normal
   \def\fontecab{\normalfont\normalsize}
   \else
   \if\@Opcab2 %%% Opção - ca
      \def\fontecab{\sc}
      \else
      \if\@Opcab3 %%% Opção - bf
         \def\fontecab{\bfseries}
         \else
         \if\@Opcab4 %%% Opção - sf
            \def\fontecab{\sffamily}
            \else
            \if\@Opcab5 %%% Opção - negrito
               \def\fontecab{\bfseries\sffamily}
            \fi
         \fi
      \fi
   \fi
\fi
%%%
%%% Estilo e Numeração das Páginas - ENP
%%%
%%% \ajuste %%% Para ajustar a formatação da numeração
%%% depois da parte pré-textual
%%%
\if\@ENPescolha0 %%% Opção - latex (Padrão do \LaTeX)
\RequirePackage{fancyhdr}
\pagestyle{fancy}\fancyhf{}
\renewcommand{\headrule}{} %%% Sem linha no topo.
\pagenumbering{arabic}
\cfoot{\fontecab\thepage}
\newcommand{\ajuste}{} %%% Não é necessário, mas se não definir
   %%% vou ter que explicar muita coisa
\else
\if\@ENPescolha1 %%% Opção - larom
\RequirePackage{fancyhdr}
\pagestyle{fancy}\fancyhf{}
\renewcommand{\headrule}{} %%% Sem linha no topo.
\pagenumbering{roman}
\cfoot{\fontecab\thepage}
\newcommand{\ajuste}{\newpage\renewcommand{\thepage}{\arabic{page}}
\cfoot{\fontecab\thepage}}
\else
   \if\@ENPescolha2 %%% Opção - abnt(padrão) (Padrão - ABNT)
   \pagenumbering{arabic}
   \renewcommand{\thepage}{\arabic{page}}
   \RequirePackage{fancyhdr}
   \pagestyle{fancy}\fancyhf{}
   \renewcommand{\headrule}{} %%% Sem linha no topo.
   \if@twoside
      \newcommand{\ajuste}{\newpage\renewcommand{\headrule}{}%%%
      \fancyhead[OR]{\fontecab\thepage}\fancyhead[LE]{\fontecab\thepage}}
   \else
      \newcommand{\ajuste}{\newpage\fancyhead{\hfill\fontecab\thepage}}
   \fi
   \else
      \if\@ENPescolha3 %%% Opção - topo
      \pagenumbering{arabic}%%%
      \RequirePackage{fancyhdr}\pagestyle{fancy}\fancyhf{}
      \renewcommand{\headrule}{}
      \renewcommand{\sectionmark}[1]{\markright{#1}}
      \if@twoside
         \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
         \thechapter:\,#1}{}}
         \newcommand{\ajuste}{\newpage\fancyhead[OR]{\fontecab%%%
         Seção\ \thesection:\,\,\rightmark \hfill\thepage}%%%
         \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
      \else
         \newcommand{\ajuste}{\newpage\renewcommand{\headrule}{}%%%
         \fancyhead{\fontecab Seção \thesection:\ \rightmark %%%
         \hfill\thepage}}
      \fi
      \else
         \if\@ENPescolha4 %%% Opção - tracejado
            \pagenumbering{roman}
            \renewcommand{\thepage}{\fontecab\roman{page}}
            \RequirePackage{fancyhdr}\pagestyle{fancy}\fancyhf{}
            \renewcommand{\headrule}{}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \if@twoside
            \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
               \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\renewcommand{\thepage}%%%
               {\arabic{page}}\fancyhead[OR]{\fontecab Seção\ %%%
               \thesection:\,\,\rightmark \dotfill\thepage}%%%
               \fancyhead[LE]{\fontecab \thepage\dotfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage\renewcommand{\thepage}{%%%
               \arabic{page}}\fancyhead{\fontecab Seção %%%
               \thesection:\ \rightmark \dotfill\thepage}}
            \fi
      \else
         \if\@ENPescolha5 %%% Opção - mistura
            \pagenumbering{roman}
            \RequirePackage{fancyhdr}
            \pagestyle{fancy}\fancyhf{}
            \cfoot{\fontecab\thepage}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \renewcommand{\headrulewidth}{0pt}
            \if@twoside
               \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
                  \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\renewcommand{\thepage}%%%
               {\arabic{page}}\setcounter{page}{1}\cfoot{}%%%
               \renewcommand{\headrulewidth}{0.5pt}
               \fancyhead[OR]{\fontecab Seção\ \thesection:\,\,%%%
               \rightmark \hfill\thepage}
               \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage\renewcommand{%%%
               \thepage}{\arabic{page}}\cfoot{}
               \renewcommand{\headrulewidth}{0.5pt} %%%
               \setcounter{page}{1} \fancyhead{\fontecab%%%
               Seção \thesection:\ \rightmark \hfill\thepage}}
            \fi
      \else
         \if\@ENPescolha6  %%% Opção - popular
            \pagenumbering{roman}
            \renewcommand{\thepage}{\fontecab\roman{page}}
            \RequirePackage{fancyhdr}\pagestyle{fancy}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \renewcommand{\headrulewidth}{0pt}
            \if@twoside
               \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
                  \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\setcounter{page}{1}%%%
               \renewcommand{\thepage}{\arabic{page}}\renewcommand{%%%
               \headrulewidth}{0.5pt}\fancyhead[OR]{\fontecab Seção\ %%%
               \thesection:\,\,\rightmark \hfill\thepage}\cfoot{}%%%
               \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage\setcounter{page}{1}%%%
               \renewcommand{\thepage}{\arabic{page}}\renewcommand{%%%
               \headrulewidth}{0.5pt}\fancyhead{\fontecab Seção%%%
               \thesection:\ \rightmark\hfill\thepage}\cfoot{}}
            \fi
      \else
         \if\@ENPescolha7 %%% Opção - estilo
            \pagenumbering{roman}
            \RequirePackage{fancyhdr}\pagestyle{fancy}\cfoot{}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \if@twoside
               \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
                  \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\renewcommand{\thepage}%%%
               {\arabic{page}}%%%
               \fancyhead[OR]{\fontecab Seção\ \thesection:\,\,%%%
               \rightmark \hfill\thepage}
               \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage\renewcommand{%%%
               \thepage}{\arabic{page}}
               \fancyhead{\fontecab Seção \thesection:\ %%%
               \rightmark \hfill\thepage}}
            \fi
      \else
         \if\@ENPescolha8 %%% Opção - sofisticado
            \pagenumbering{roman}
            \RequirePackage{fancyhdr}\pagestyle{fancy}\cfoot{}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \if@twoside
               \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
                  \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\setcounter{page}{1}%%%
               \renewcommand{\thepage}{\arabic{page}}%%%
               \fancyhead[OR]{\fontecab Seção\ \thesection:\,\,%%%
               \rightmark \hfill\thepage}
               \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage\setcounter{page}{1}
               \renewcommand{\thepage}{\arabic{page}}
               \fancyhead{\fontecab Seção \thesection:\ \rightmark%%%
               \hfill\thepage}}
            \fi
      \else
         \if\@ENPescolha9 %%% Opção - alternativo
            \pagenumbering{arabic}
            \RequirePackage{fancyhdr}\pagestyle{fancy}\cfoot{}
            \renewcommand{\sectionmark}[1]{\markright{#1}}
            \fancyhead{\sc \hfill\thepage}
            \if@twoside
               \renewcommand{\chaptermark}[1]{\markboth{\chaptername\
                  \thechapter:\,#1}{}}
               \newcommand{\ajuste}{\newpage\fancyhead[OR]{\fontecab %%%
               Seção\ \thesection:\,\,\rightmark \hfill\thepage}\cfoot{}%%%
               \fancyhead[LE]{\fontecab \thepage\hfill\leftmark}}
            \else
               \newcommand{\ajuste}{\newpage%%%
               \cfoot{}\fancyhead{\fontecab Seção \thesection:\ %%%
               \rightmark \hfill\thepage}}
            \fi
\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%        Fim das definições para enumeração das páginas              %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Indenta o primeiro parágrafo - estilo brasileiro
%%%
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue
%%%
\setlength{\parindent}{1.25cm} %%% Ajusta a indentação para o valor definido
                               %%% nas normas do DTL
%%%
\endinput
%%%
%%% Fim do arquivo `Estilo.cls'.
%%%
