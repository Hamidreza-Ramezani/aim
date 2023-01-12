def read_file(file_path):

    file1 = open(file_path, 'r')
    Lines = file1.readlines()

    config = ""
    lst=[]
    for line in Lines:
        if "dpu_num" in line:
           config = line.strip()
        elif "CPU" in line: 
           report = line.strip()
           lst.append((config, report))
    parse(lst)

def parse(lst: list):
    for pair in lst:
      config = pair[0]
      report = pair[1]
      config_fields = config.split("\t")
      config_fields = list(filter(None, config_fields))
      config_fields = [w.replace(',', '') for w in config_fields]
      config_fields = [w.replace(' ', '') for w in config_fields]
      fields1=[]
      for field in config_fields:
        fields1.append(field.split(":")[1])

      report_fields = report.split("\t")
      report_fields = list(filter(None, report_fields))
      report_fields = [w.replace(',', '') for w in report_fields]
      report_fields = [w.replace(' ', '') for w in report_fields]
      fields2=[]
      for field in report_fields:
        fields2.append(field.split(":")[1])

      #new_pair = (config_fields, report_fields)
      new_pair = (fields1, fields2)
      print(new_pair)




filepath = "./performance.log"
read_file(filepath)



