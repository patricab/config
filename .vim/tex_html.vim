"" vim setting
"
"" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright
"" Open my bibliography file in split
"	map <leader>b :vsp<space>$BIB<CR>
"	map <leader>r :vsp<space>$REFER<CR>
"" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !pdflatex <c-r>%<CR>
"" Open corresponding .pdf/.html or preview
"	map <leader>p :!zathura <c-r>expand('%:r')<CR>
"" Runs a script that cleans out tex build files whenever I close out of a .tex file.
"	autocmd VimLeave *.tex !texclear %
"

"map <leader><leader> <Esc>/<++><Enter>"0c4l
map <leader><leader> <Esc>/<++><Enter>"0C
"""LATEX
	" Word count:
"	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ;tit \title{}<esc>hi
	autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ;ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ;cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ;glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;li <Enter>\item<Space>
	autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ;ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ;chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ;up \usepackage{}<Space><CR><++><Esc>?}<CR>i
	autocmd FileType tex inoremap ;tt \texttt{}<Space><CR><++><Esc>?}<CR>i
	autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ;rn (\ref{})<++><Esc>F}i

"""HTML
	autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ;it <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ;e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
	autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ;im <img src="" alt="<++>"><++><esc>Fcf"a
	autocmd FileType html inoremap ;td <td></td><++><Esc>Fdcit
	autocmd FileType html inoremap ;tr <tr></tr><Enter><++><Esc>kf<i
	autocmd FileType html inoremap ;th <th></th><++><Esc>Fhcit
	autocmd FileType html inoremap ;tab <table><Enter></table><Esc>O
	autocmd FileType html inoremap ;gr <font color="green"></font><Esc>F>a
	autocmd FileType html inoremap ;rd <font color="red"></font><Esc>F>a
	autocmd FileType html inoremap ;yl <font color="yellow"></font><Esc>F>a
	autocmd FileType html inoremap ;dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
	autocmd FileType html inoremap ;dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
	autocmd FileType html inoremap &<space> &amp;<space>

"""Markdown
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ;b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ;e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ;i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;l --------<Enter>
	autocmd Filetype rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ;c ```<cr>```<cr><cr><esc>2kO

