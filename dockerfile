FROM python:3.14.0a5-alpine3.21

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python","./app.py" ]
