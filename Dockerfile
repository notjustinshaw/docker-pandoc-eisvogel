FROM pandoc/latex:2.16.2

# Install additional TeX packages such as those used by eisvogel template

RUN tlmgr install adjustbox 
RUN tlmgr install babel-german
RUN tlmgr install background
RUN tlmgr install bidi
RUN tlmgr install collectbox
RUN tlmgr install csquotes
RUN tlmgr install everypage
RUN tlmgr install filehook
RUN tlmgr install footmisc
RUN tlmgr install footnotebackref
RUN tlmgr install framed
RUN tlmgr install fvextra
RUN tlmgr install koma-script
RUN tlmgr install letltxmacro
RUN tlmgr install ly1
RUN tlmgr install mdframed
RUN tlmgr install mweights
RUN tlmgr install needspace
RUN tlmgr install pagecolor
RUN tlmgr install sourcecodepro
RUN tlmgr install sourcesanspro
RUN tlmgr install titling
RUN tlmgr install ucharcat
RUN tlmgr install ulem
RUN tlmgr install unicode-math
RUN tlmgr install upquote
RUN tlmgr install xecjk
RUN tlmgr install xurl
RUN tlmgr install zref

RUN apk update && apk add texlive

COPY eisvogel.tex eisvogel.tex
