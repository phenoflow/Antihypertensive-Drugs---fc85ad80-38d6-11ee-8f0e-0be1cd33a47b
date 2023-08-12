# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"11156","system":"gprdproduct"},{"code":"17950","system":"gprdproduct"},{"code":"21803","system":"gprdproduct"},{"code":"21849","system":"gprdproduct"},{"code":"21867","system":"gprdproduct"},{"code":"24191","system":"gprdproduct"},{"code":"24195","system":"gprdproduct"},{"code":"26211","system":"gprdproduct"},{"code":"26217","system":"gprdproduct"},{"code":"26220","system":"gprdproduct"},{"code":"29676","system":"gprdproduct"},{"code":"30773","system":"gprdproduct"},{"code":"30913","system":"gprdproduct"},{"code":"34247","system":"gprdproduct"},{"code":"34882","system":"gprdproduct"},{"code":"34890","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-berkozide---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-berkozide---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-berkozide---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
