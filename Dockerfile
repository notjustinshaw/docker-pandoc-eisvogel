FROM pandoc/latex:2.16.2

# Install additional TeX packages such as those used by eisvogel template

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet \
    tlmgr update \
    && tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref
