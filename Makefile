MD_SRC = README.md
NAME ?= javier-de-santiago-cv

generate:
	pandoc --from=markdown --to=pdf $(MD_SRC) -o $(NAME).pdf --pdf-engine=wkhtmltopdf
	pandoc --from=markdown --to=plain $(MD_SRC) -o $(NAME).txt

.PHONY: generate
