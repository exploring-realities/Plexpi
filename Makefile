build:
	docker build -t plex-server . 

run:
	docker run 
	-d
	-it
	--name plex-server 
	-p 26255:32400 
	-v /srv/videos/:/var/lib/plexmediaserver 
	plex-server
