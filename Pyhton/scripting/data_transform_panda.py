import pandas as pd
df = pd.read_csv('data.csv')
df['new_column'] = df['existign_column']*2
df.to_csv('output.csv', index=False)