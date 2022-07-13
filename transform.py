import pandas as pd
from scipy import stats
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import operator


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
    
    return food
