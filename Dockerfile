FROM python:3.8-slim-buster

WORKDIR /app

COPY api/requirements.txt .

RUN pip install -U pip && pip install -r requirements.txt

COPY api/ ./api

COPY model/model.pkl ./model/model.pkl

COPY initializer.sh .

RUN chmod +x initializer.sh

EXPOSE 8000

ENTRYPOINT ["./initializer.sh"]

#build the image 
###DOCKER_BUILDKIT=1 docker build . -t model-api:v1

##run the api:
#docker run -p 8000:8000 model-api:v1


