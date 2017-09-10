#!/bin/sh

resume.pdf: resume.tex internal/output
	xelatex --output-directory=internal/output/ resume.tex && mv internal/output/resume.pdf .

internal/output:
	mkdir -p internal/output

.PHONY: clean
clean:
	rm internal/output/* resume.pdf

webmirror:
	cp resume.pdf /var/www/html/
