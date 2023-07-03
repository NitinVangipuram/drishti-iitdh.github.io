main: jekyll
	bundle exec jekyll serve --livereload

drafts: jekyll
	bundle exec jekyll serve --livereload --drafts

mobile: jekyll
	bundle exec jekyll serve --livereload --host 192.168.1.15

jekyll:
	gem install jekyll bundler
	bundle install