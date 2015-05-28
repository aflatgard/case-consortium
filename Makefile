runserver: 
	hugo server --watch --verboseLog=true --buildDrafts -v --baseUrl=""	
	
createjs:
	bash scripts/create_json_from_mds.sh

deploy:
	rm -rf public/*
	/usr/local/bin/hugo-0.13 -s . -b 'http://case-consortium.stage.ccnmtl.columbia.edu/test/' && rsync -avp --delete public/ selma.ccnmtl.columbia.edu:/var/www/case-consortium/
