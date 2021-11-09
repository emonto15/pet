import pandas as pd
from sklearn.model_selection import train_test_split


df = pd.read_parquet("data/translated.parquet.gzip")

X_train, X_test = train_test_split(df, test_size=0.33, stratify=df["label"])

X_train.to_csv("data/train.csv", index=False)

X_test.to_csv("data/test.csv", index=False)