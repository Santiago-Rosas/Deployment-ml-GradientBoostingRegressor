#!/bin/bash

gunicorn --bind 0.0.0.0 api.main:app -w 2 -k uvicorn.workers.UvicornWorker
##utilizaremso a gunicorn como medio para que los workers de unicorn 
##puedan ejecutarse de manera paralela