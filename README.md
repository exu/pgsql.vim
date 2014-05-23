Vim Postgresql syntax file
===============

* Language:     pgsql
* Maintainer:   Devrim GUNDUZ <devrim@PostgreSQL.org>
* Contributors: Jacek Wysocki, Ryan Delaney <ryan.delaney@gmail.com>
* Last Change:  $Fri May 23 09:55:21 PDT 2014$
* Filenames:    *.pgsql *.plpgsql
* URL:			https://github.com/exu/pgsql.vim

If you need to highlight any of \*.sql files 
you can insert this lines to your *filetype.vim*

    au BufNewFile,BufRead *.sql setf pgsql

Or load it using the default sql.vim:

    let g:sql_type_default = 'pgsql'
