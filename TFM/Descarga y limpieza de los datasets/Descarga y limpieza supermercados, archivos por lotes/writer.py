def output_data(food, filename):
    """Gets pandas dataframe and saves it in local

    Args:
        data (DataFrame)
        filename (str): Name of file to save data
    """

    food.to_csv(filename, sep=",", encoding="utf-8")
