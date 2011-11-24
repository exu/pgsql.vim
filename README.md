Vim syntax file
===============

* Language:     pgsql
* Maintainer:   Devrim GUNDUZ <devrim@PostgreSQL.org>
* Last Change:  $Date: 2010/03/11 21:43:23 $
* Filenames:    *.pgsql *.plpgsql
* URL:          http://www.gunduz.org/postgresql/pgsql.vim

If you need to highlight any of \*.sql files 
you can insert this lines to your *filetype.vim*

    au BufNewFile,BufRead *.sql setf pgsql

