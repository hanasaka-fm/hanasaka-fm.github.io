run:
	docker run -it --rm --name hanasakafm -v "$$PWD":/usr/src/app -p "4000:4000" \
	  starefossen/github-pages \
	  jekyll serve --future --watch --force_polling -H 0.0.0.0 -P 4000

run-ngrok:
	docker run -d --rm --name hanasakafm -v "$$PWD":/usr/src/app -p "4000:4000" \
	  starefossen/github-pages \
	  jekyll serve --future --watch --force_polling -H 0.0.0.0 -P 4000
	ngrok http --subdomain=hanasakafm 4000 || echo 'done ngrok'
	docker stop hanasakafm

update_feed:
	gsutil docs/feed.xml gs://hanasakafm/feed.xml

update_artwork:
	gsutil docs/artwork.png gs://hanasakafm/artwork.png
