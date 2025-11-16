"""
Display the top 3 word and word count in each file
"""
import os

files = ["18719013.txt", "18941263.txt", "18964660.txt", "19771122.txt", "20405411.txt", 
         "23326248.txt", "23674598.txt", "23685357.txt", "23807877.txt", "23852273.txt" ]
folder = "/Users/vydang/Documents/School/UTHealth Classes/FA22/BMI5007/Homeworks/hw01/medline/" 

def dictionary_count():
	"""Display word and count inside a dictionary"""
	count = {}
	with open(filename, 'r', encoding="utf8") as file:
		data = file.read()
		words = data.split()
		for word in words:
			if word in count:
				count[word] += 1
			else:
				count[word] = 1
		return count

def top_three():
	"""Display the top 3 words and count in document"""
	count = dictionary_count()
	sort_by_key = sorted(count.items(), key=lambda kv:kv[1], reverse=True)[:3]
	return sort_by_key

for f in files:
	filename = os.path.join(folder,f)
	print("\nProcessing:", f)
	print(top_three())