build :
	sudo ./_scripts/manual_build.sh

serve:
	bundle exec jekyll serve

clean :
	git clean -x -d -f