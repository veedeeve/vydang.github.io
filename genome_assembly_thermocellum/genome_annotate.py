import pandas as pd

# Load BLAST output
blast_file = "blastp_results.out"
columns = ["qseqid","sseqid","pident","length","mismatch","gapopen",
           "qstart","qend","sstart","send","evalue","bitscore"]

df = pd.read_csv(blast_file, sep="\t", names=columns)

# Filter by thresholds (example: evalue <= 1e-5, pident >= 50, coverage >= 80%)
df['coverage'] = df['length'] / df.groupby('qseqid')['length'].transform('max') * 100
df_filtered = df[(df['evalue'] <= 1E-5) & (df['pident'] >= 50) & (df['coverage'] >= 80)]

# Select top hit per query based on lowest evalue and highest bitscore
top_hits = df_filtered.sort_values(['qseqid','evalue','bitscore'], ascending=[True,True,False])
top_hits = top_hits.groupby('qseqid').first().reset_index()

top_hits.to_csv("blastp_top_hits.csv", index=False)

parts = top_hits["sseqid"].str.split("|", expand=True)
top_hits["db"] = parts[0]
top_hits["acc"] = parts[1]
top_hits["entry"] = parts[2]

# Keep only unique accessions
unique_df = top_hits.drop_duplicates(subset=["acc"])
unique_df.to_csv("blastp_unique.csv", index=False)

print("Top hits:")
print(top_hits.head())
print("\nUnique hits:")
print(unique_df.head())