FILES_AMOUNT = $(shell git status --short | wc -l)
STATUS = $(shell if [ $(FILES_AMOUNT) -eq "1" ]; then echo "1 file"; else echo "$(FILES_AMOUNT) files"; fi)

all: stage status commit push

checkoutMaster:
	git checkout master

checkoutPages:
	git checkout gh-pages

stage:
	git add --all .

status:
	git status --short

commit:
	git commit --quiet --message "[make] Updating dotfiles ($(STATUS))."

push:
	git push --quiet --force origin master

removeExceptDocs:
	rm -rf -- ^docs
	setopt extendedglob

orgPublish:
	emacs agenda.org -f org-publish-all
