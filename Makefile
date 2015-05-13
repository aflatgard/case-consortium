runserver:
	hugo server --watch --buildDrafts --verboseLog=true -v --baseUrl=""
createjs:
	bash scripts/create_json_from_mds.sh
deploy:
	rm -rf public/*
	/usr/local/bin/hugo-0.13 -s . -b 'http://case-consortium.stage.ccnmtl.columbia.edu/' && rsync -avp --delete public/ selma.ccnmtl.columbia.edu:/var/www/case-consortium/
