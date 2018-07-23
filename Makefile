run:
	docker run -it --rm -v "$$PWD/docs":/usr/src/app -p "4000:4000" starefossen/github-pages

update_feed:
	gsutil docs/feed.xml gs://ndsfm/feed.xml

update_artwork:
	gsutil docs/artwork.png gs://ndsfm/artwork.png
