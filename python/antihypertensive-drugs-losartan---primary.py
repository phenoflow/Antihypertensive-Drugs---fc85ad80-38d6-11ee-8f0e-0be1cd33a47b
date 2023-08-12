# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"47006","system":"gprdproduct"},{"code":"49588","system":"gprdproduct"},{"code":"52658","system":"gprdproduct"},{"code":"54404","system":"gprdproduct"},{"code":"55446","system":"gprdproduct"},{"code":"56970","system":"gprdproduct"},{"code":"57028","system":"gprdproduct"},{"code":"60506","system":"gprdproduct"},{"code":"61053","system":"gprdproduct"},{"code":"61288","system":"gprdproduct"},{"code":"624","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-losartan---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-losartan---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-losartan---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
