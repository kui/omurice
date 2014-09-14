HTMLS := $(patsubst %.md,%.html,$(wildcard *.md))

site: $(HTMLS) Makefile

clean:
	rm $(HTMLS)

%.html: %.md
	script/page $<
