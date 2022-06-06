app_name = ""
message? = ""

commit:
	git add . && \
	git commit -m "$(message)" && \
	heroku git:remote -a $(app_name) && \
	git push heroku master

install:
	pip3 install -r requirements.txt

run: 
	uvicorn main:app --reload
