ids = []
cnt =0
with open('./paper','r') as f:
  for line in f.readlines():
    if line.__contains__('bibitem'):
      id = line.split('{')[1].split('}')[0]
      ids.append(id)
    if line.__contains__('cite{'):
      print(line[line.find('cite'): line.find('cite')+30])
print(cnt)