all: draft-hoffman-more-private-algs.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
