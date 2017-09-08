#!/bin/sh
xelatex --output-directory=internal/output/ resume.tex && mv internal/output/resume.pdf .
