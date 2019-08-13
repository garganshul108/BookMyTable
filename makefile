menu:
	echo "Choose an option\n 1. make updateLog\n"

updateLog:
	git checkout app-front-after-merge
	git add mylog.md
	git commit -m "updated mylog.md from makefile"
	git push origin app-front-after-merge