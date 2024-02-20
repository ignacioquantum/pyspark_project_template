from typing import Optional
from pyspark.sql import DataFrame, SparkSession


class Etl:

    def __init__(self, spark: SparkSession, arguments: dict):
        self.spark = spark
        self.args = arguments
        self.env = arguments.get('ENV')

    def extract_data(self) -> DataFrame:
        """Extract operations

        :return: A dataframe
        :doc-author: IgnacioDiaz
        """
        aux_df: Optional[DataFrame] = None

        return aux_df

    def transform_data(self, df: DataFrame) -> DataFrame:
        """
        Transformation operations

        :param df: Dataframe pre-transformed
        :return: The dataFrame transformed
        :doc-author: Ignacio Diaz
        """
        raw_df = df

        return raw_df

    def load_data(self, df: DataFrame) -> None:
        """Load operations

        :param df: Dataframe to be loaded
        :return: None
        :doc-author: Ignacio Diaz
        """

    def main(self):
        """The main function is the entry point of the program. Calls the
        respective class functions It takes in a dictionary of arguments and
        returns nothing.

        :param self: Represent the instance of the class
        :return: The final_df
        :doc-author: Ignacio Diaz
        """
        env: str = self.args.get("ENV")

        initial_df = self.extract_data()

        final_df = self.transform_data(initial_df)

        self.load_data(final_df)

        self.spark.stop()
