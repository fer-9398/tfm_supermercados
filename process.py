import logging
import argparse
from reader import read_file
from transform import transform
from writer import output_data
import datetime


def main(filename):

    logging.info(f"Reading filename: {filename}")
    food = read_file(filename)

    logging.info("Processing data...")
    transform_data = transform(food)

    output = 'output/data{}.csv'.format(datetime.datetime.now().strftime("%Y%m%d%H%M%S"))
    logging.info(f"Writing data in {output}")
    output_data(transform_data, output)


if __name__ == '__main__':

    logging.basicConfig(
        format='[%(name)s][%(levelname)s] %(message)s',
        level=logging.DEBUG)

    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--filename", help="File to process")
    args = parser.parse_args()
    main(args.filename)
