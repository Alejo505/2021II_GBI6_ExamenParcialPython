c=msc.download_pubmed(keyword="Ecuador genomics")

print("El número de artículos es: ", c["Count"])
print("El PMID del primer artículo es:", c["IdList"][0]
