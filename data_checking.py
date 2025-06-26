import pandas as pd
import os

def load_csv_files(folder):
    dataframes = {}
    for filename in os.listdir(folder):
        if filename.endswith(".csv"):
            path = os.path.join(folder, filename)
            try:
                df = pd.read_csv(path, encoding='latin1', sep=';')
                dataframes[filename] = df
            except Exception as e:
                print(f"Błąd przy wczytywaniu {filename}: {e}")
    return dataframes

def explore(dataframes):
    for name, df in dataframes.items():
        print(f"\nPlik: {name}")
        print(df.info())
        print("\nPrzykładowe dane:\n", df.head(3))
        print("*" * 60)

if __name__ == "__main__":
    folder = "Data"
    if not os.path.exists(folder):
        print("Folder 'Data' nie istnieje w katalogu bieżącym.")
    else:
        dfs = load_csv_files(folder)
        if not dfs:
            print("Nie znaleziono plików CSV.")
        else:
            explore(dfs)
