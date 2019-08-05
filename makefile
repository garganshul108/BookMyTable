menu:
	echo "Choose an option\n 1. make updateLog\n"

updateLog:
	git checkout app-front
	git add mylog.md
	git commit -m "updated log"
	git push origin app-front