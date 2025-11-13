import os

files = ["18941263.txt", "18941263.txt", "18964660.txt", "19771122.txt", "20405411.txt", 
         "23326248.txt", "23674598.txt", "23685357.txt", "23807877.txt", "23852273.txt" ]
folder = "/Users/vydang/Documents/School/UTHealth Classes/FA22/BMI5007/Homeworks/hw01/medline/" 

def read_words(filename):
    """Display the total counts of words in a file"""
    word_count = 0
    with open(filename, 'r', encoding="utf8") as f:
        data = f.read()
        lines = data.split()
        word_count += len(lines)
    print("Total words:", word_count)

def freq_file(file):
    """Finds the word with the highest frequency"""
    frequent_word = ""
    frequency = 0
    words = []
    with open(filename, 'r', encoding="utf8") as file:
        for line in file:
            line_word = line.lower().replace(',','').replace('.','').split(" ")
            for word in line_word:
                words.append(word)
        for a_word in range(0, len(words)):
            count = 1
            for count_of_words in range(a_word+1, len(words)):
                if words[a_word] == words[count_of_words]:
                    count += 1
                if count > frequency:
                    frequency = count
                    frequent_word = words[a_word]
        print("Word: " + frequent_word)
        print("Counts: " + str(frequency))

for f in files:
    filename = os.path.join(folder,f)
    print("\nProcessing:", f)
    read_words(filename)
    freq_file(filename)
