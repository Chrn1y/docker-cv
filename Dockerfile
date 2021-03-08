FROM debian:10.3

RUN apt-get update
RUN yes | apt-get install texlive-fonts-recommended texlive-generic-recommended texlive-latex-extra texlive-fonts-extra dvipng texlive-latex-recommended texlive-base texlive-pictures texlive-lang-cyrillic texlive-science cm-super texlive-generic-extra
COPY /CV .

CMD ["pdflatex", "main.tex", "-interaction=nonstopmode"]