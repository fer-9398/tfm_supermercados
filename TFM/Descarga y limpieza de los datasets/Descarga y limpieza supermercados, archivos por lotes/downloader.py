import gdown
url='https://drive.google.com/uc?id=1Y1CAna8hFl6Yc_iR6ilJ_ysxsZgP_S5O'
output = 'supermercados_raw.csv'
gdown.download (url, output, quiet=False)