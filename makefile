dev: jekyll
	bundle exec jekyll serve --livereload --drafts

main: jekyll
	bundle exec jekyll serve --livereload

jekyll:
	gem install jekyll bundler
	bundle install