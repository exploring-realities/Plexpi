build:
	docker build -t plexmediaserver . 
	docker tag plexmediaserver pingu/plexmediaserver:latest 
	docker push pingu/plexmediaserver:latest
run:
	docker run \
	-d \ 
	-it \ 
	--net="host" \
	--name plexmediaserver \
	-p 32400:32400 \
	-v /media/pi/usb:/media \
	-v /srv/plexpi/plexmediaserver:/var/lib/plexmediaserver \
	-v /srv/plexpi/userconf/plexmediaserver:/etc/default/plexmediaserver \
	plexmediaserver
