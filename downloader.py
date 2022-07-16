import gdown
url='https://drive.google.com/uc?id=1cVXxbdUUUJpANo7INWxe_doiKbZFano6'
output = 'supermercados_raw.csv'
gdown.download (url, output, quiet=False)