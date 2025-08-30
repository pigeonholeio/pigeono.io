# Reminder: Need to compile mkdocs locally then push statically built content

pip3-deps:
	pip3 install -r requirements.txt

compile:
	cd src && \
		mkdocs build -f mkdocs.yml
	echo "pigeono.io" > docs/CNAME

# PWD := $$(pwd)
# .SILENT: build compile publish-live
 
# compile:
# 	sass src/assets/stylesheets/roadmap.scss material/assets/stylesheets/roadmap.css
# 	-docker run -it --rm -w /data -v `pwd`:/data rlespinasse/drawio-desktop-headless -x -f png -o /data/material/assets/images/arch.png /data/src/assets/images/arch.drawio
# 	-docker run -it --rm -w /data -v `pwd`:/data rlespinasse/drawio-desktop-headless -x -f png -o /data/material/assets/images/auth-flow.png /data/src/assets/images/auth-flow.drawio

# build: dev

# dev: compile
# 	docker run -it --rm -v ${PWD}:/docs -p 8001:8000 squidfunk/mkdocs-material:9.6 serve -w material


# publish-live:
#   # mkdir -p
	
# 	yq eval -i '.site_url="https://pigeono.io"' ./src/mkdocs.yml
# 	echo "❗ Building the site.."
# 	docker run -it --rm -v ${PWD}/src:/docs -v "$$(realpath ./docs)":/out docker.io/squidfunk/mkdocs-material:latest build -d /out
# 	echo "❗ Committing the site to git..."
# 	echo "pigeono.io" > ./docs/CNAME
# 	git add src/ docs/
# 	git commit -am'Updated website'

# 	echo "❗ Pushing the site to Github..."
# 	git push

# 	echo "✅ Published!! 🍺🍺🍺"
	