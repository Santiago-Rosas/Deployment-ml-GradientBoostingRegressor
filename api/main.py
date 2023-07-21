from fastapi import FastAPI ###for service creation 
from .app.models import PredictionResponse, PredictionRequest ##functions we create 
from .app.views import get_prediction ##function that we create 

app = FastAPI(docs_url='/') ##para que la ui de la documentacion que se genera con fastapi este en el origen y podeo porbar el mdelo 

@app.post('/v1/prediction') ##titulo de nuestro modelo 
def make_model_prediction(request: PredictionRequest):
    return PredictionResponse(worldwide_gross=get_prediction(request))