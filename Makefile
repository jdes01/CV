MD_SRC = README.md
NAME ?= javier-de-santiago-cv
IMAGE = cv-builder

# Build the CV without installing anything on your machine.
# The pandoc + wkhtmltopdf toolchain lives inside a throwaway Docker image:
# it is built once, cached by Docker (npx-style), and every container is
# removed right after it runs (--rm). Use `make clean-image` to wipe it too.
generate:
	docker build -q -t $(IMAGE) - < Dockerfile
	docker run --rm -v "$(PWD):/data" $(IMAGE) \
		pandoc --from=markdown --to=pdf $(MD_SRC) -o $(NAME).pdf --pdf-engine=wkhtmltopdf
	docker run --rm -v "$(PWD):/data" $(IMAGE) \
		pandoc --from=markdown --to=plain $(MD_SRC) -o $(NAME).txt

# Remove the cached toolchain image (truly leaves nothing behind).
clean-image:
	docker rmi $(IMAGE) 2>/dev/null || true

.PHONY: generate clean-image
