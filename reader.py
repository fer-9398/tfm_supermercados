import pandas as pd


def read_file(filename) -> pd.DataFrame:
    """Read csv file and return formated dataframe

    Args:
        filename (str): Name of file with path

    Return:
        DataFrame
    """
    food = pd.read_csv(filename, encoding="utf-8")
    return food
