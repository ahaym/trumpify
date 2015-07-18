import random
import sys
#Markov Chain Text Generator using triplets of words; written for trumpify (http://ahaym.github.io/trumpify)
#Big thanks to Shabda Raj for an excellent article on Markov Chain- Based Text Generation (http://agiliq.com/blog/2009/06/generating-pseudo-random-text-with-markov-chains-u/)

def generate(file, size):
    with open(file, 'r') as myfile:
        text = myfile.read().replace('\n', ' ').split()
    markov = []
    triplets = {}
    for i in range(0, len(text) - 4):
        w1, w2, w3 = text[i], text[i+1], text[i+2]
        key = (w1, w2)
        if key in triplets:
            triplets[key].append(w3)
        else:
            triplets[key] = [w3]

    initial = random.randint(0, len(text)-3)
    w1, w2 = text[initial], text[initial+1]
    for i in range(0, size):
        markov.append(w1)
        w1, w2 = w2, random.choice(triplets[(w1, w2)])
    markov.append(w2)
    return ' '.join(markov)

if __name__ == '__main__':
    print(generate(sys.argv[1], size=int(sys.argv[2])))
