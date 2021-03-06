import os
import subprocess
import binascii
import time
import markov
import random
c = 0
files = int(input('How many files to populate?: '))
jsinsert = '<!-- $INSERTSPOTJS -->\n'
insertspot = '<!-- $INSERTSPOT -->\n'
startinsert = "<p class=\"lead\">"
endinsert = '</p>'
pagelist = []
names = []
pagestr = ''
assert type(files) is int
while c < files:
	names.append(binascii.hexlify(os.urandom(2)).decode('ascii') + '.html')
	url = '/trumpify/trump/' + names[c]
	pagelist.append('randomlinks[' + str(c) + ']=\"' + url + '\" \n')
	i = open('site/template.html', 'r')
	itext = i.read()
	i.close()	
	c += 1
for page in pagelist:
	pagestr += page
i = open('site/index.html', 'w')
itext = itext.replace(jsinsert, pagestr)
i.write(itext)
i.close()
for name in names:
	seed = random.randint(0, 1)
	print(name + '\n')
	f = open('site/index.html', 'r')
	ftext = f.read()
	f.close()
	if seed == 0:
		cmd = subprocess.check_output(['sh','dada-execute','trumpspeech.pb'], universal_newlines=True).replace('\n', '')
	else:
		cmd = markov.generate('trumpspeech.txt', 400)
	time.sleep(1)
	newtext = ftext.replace(insertspot, startinsert + cmd + endinsert)
	f = open('site/trump/' + name, 'w')
	f.write(newtext)
	f.close()
print(pagestr)
