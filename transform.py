import pandas as pd
from scipy import stats
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import operator
from datetime import datetime
from datetime import timedelta
import unidecode

def transform(food) -> pd.DataFrame:
    """Gets pandas dataframe and returns it transformed

    Args:
        food (DataFrame)

    Return:
        DataFrame
    """
    blacklist = ['cocina','basura','detergente','electrodomestico','corporal','higienico','limpieza', 'jardineria', 
             'casa', 'hogar', 'cuidado', 'cabello', 'bebe',
             'perfumeria', 'mascota', 'parafarmacia', 'farmacia', 'maquillaje','drogueria','soy_solidario'] #categorias que no son alimentos y queremos eliminar de nuestro dataset

    food = food[~food.category.str.contains('|'.join(blacklist))]
    food = food.drop(columns = ['product_id'])
    food = food.rename(columns = {'insert_date' : 'date'})
    food['date'] = food['date'].astype('datetime64[ns]')
    food.loc[food.description=="Granel","price"]= food.reference_price
    #select todays date and substract one day from it
    food[food.date ==(pd.to_datetime('today')-timedelta(days=1)).strftime('%Y-%m-%d')]
    
    return food

def transform(food) -> pd.DataFrame:
    food=food.replace('ñ','-&-', regex=True)
    cols = food.select_dtypes(include=[np.object]).columns
    food[cols] = food[cols].apply(lambda x: x.str.normalize('NFKD').str.encode('ascii', errors='ignore').str.decode('utf-8'))
    food = food.replace('-&-','ñ', regex=True)
    
    return food