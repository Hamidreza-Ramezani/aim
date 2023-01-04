def read_paf(file_path):
    with open(file_path, "rb") as f:
        raw_file = f.read()

    for line in raw_file.split(b"\n"):
        if not line: continue

        fields = line.split(b"\t")[:24]
        cs_tag = fields[23].decode("utf-8")
        cs_tag = cs_tag[5:]
        reference, query = parse_cs_tag(cs_tag)
        print (reference) 
        print (query) 


def parse_cs_tag(tag):
    query = '<'
    reference = '>'
    insert_char = '+'
    delete_char = '-'
    mismatch_char = '*'
    match_char = '='
    state = 0
    for i,c in enumerate(tag):
       if state == 1:
           state = 2
           continue
       elif state == 2:
           state = 0
           continue
       elif state == 3:
           state = 0
           continue
       elif c == match_char: 
           continue
       elif c == mismatch_char:
          reference += tag[i+1].upper()
          query += tag[i+2].upper()
          state = 1
          continue
       elif c == insert_char:
          reference += tag[i+1].upper()
          state = 3
          continue
       elif c == delete_char:
          query += tag[i+1].upper()
          state = 3
          continue
       reference += c
       query += c
       state = 0
     
    return (reference, query)


filepath = "/home/hamid/Documents/master/3/eece571p/project/aim/Datasets/raw/test1.paf"
read_paf(filepath)




