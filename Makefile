.PHONY: update build serve

build: update
	@echo "🏗️ Construction du site Hugo..."
	hugo --gc --minify

serve: update
	hugo server --disableFastRender
