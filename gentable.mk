
all: cangjie3.table cangjie5.table

.SUFFIXES: .scm .table

.scm.table:
	echo "(begin (load \"${CURDIR}/$<\") (for-each (lambda (key) (display (format \"~a ~W\n\" (apply string-append (caar key)) (cadr key)))) `basename $< .scm`-rule))" | uim-sh -b | grep -a -v "^#<undef>" | LANG=C LC_ALL=C sort > $@
