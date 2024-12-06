PWD := $$(pwd)
.SILENT: build
.SILENT: compile
.SILENT: publish-test

compile:
	sass src/assets/stylesheets/roadmap.scss material/assets/stylesheets/roadmap.css
	-docker run -it --rm -w /data -v `pwd`:/data rlespinasse/drawio-desktop-headless -x -f png -o /data/material/assets/images/arch.png /data/src/assets/images/arch.drawio
	-docker run -it --rm -w /data -v `pwd`:/data rlespinasse/drawio-desktop-headless -x -f png -o /data/material/assets/images/auth-flow.png /data/src/assets/images/auth-flow.drawio

build: dev

dev: compile
	docker run -it --rm -v ${PWD}:/docs -p 8001:8000 squidfunk/mkdocs-material:latest serve -w material


publish-test:
  # mkdir -p
	yq eval -i '.site_url="https://test.pigeono.io"' ./mkdocs.yml
	cd "${HOME}/git" && rm -rf ./test.pigeono.io && git clone git@github.com:planesailingio/test.pigeono.io.git
	docker run -it --rm -v ${PWD}:/docs -v "$$(realpath ../../test.pigeono.io/docs)":/out squidfunk/mkdocs-material:latest build -d /out
	echo "Pushing to git repo"
	cd "$$(realpath ../../test.pigeono.io/docs)" && git add . && git commit -m'make publish' && git push
	echo "well done, rhys\!" | cowsay | lolcat

publish-live:
  # mkdir -p
	yq eval -i '.site_url="https://pigeono.io"' ./mkdocs.yml
	cd "${HOME}/git" && rm -rf ./pigeono.io && git clone git@github.com:planesailingio/pigeono.io.git
	docker run -it --rm -v ${PWD}:/docs -v "$$(realpath ../../pigeono.io/docs)":/out squidfunk/mkdocs-material:latest build -d /out
	echo "Pushing to git repo"
	cd "$$(realpath ../../pigeono.io/docs)" && echo "pigeono.io" > CNAME  && git add . && git commit -m'make publish' && git push
	echo "well done, rhys\!" | cowsay | lolcat
