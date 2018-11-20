FROM python

WORKDIR /srv/app

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=main.py

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0"]
