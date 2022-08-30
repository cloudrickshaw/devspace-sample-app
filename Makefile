everything: deploy
	cd frontend && devspace build  && devspace dev

build:
	cd cluster && ./main.sh
deploy:
	cd cluster && ./main.sh


it_explode:
	cd cluster && ./main.sh --destroy
