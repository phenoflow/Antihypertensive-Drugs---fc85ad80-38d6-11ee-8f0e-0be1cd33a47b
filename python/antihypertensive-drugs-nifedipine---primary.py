# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"26774","system":"gprdproduct"},{"code":"37726","system":"gprdproduct"},{"code":"42912","system":"gprdproduct"},{"code":"43511","system":"gprdproduct"},{"code":"43515","system":"gprdproduct"},{"code":"452","system":"gprdproduct"},{"code":"46445","system":"gprdproduct"},{"code":"49762","system":"gprdproduct"},{"code":"53357","system":"gprdproduct"},{"code":"55455","system":"gprdproduct"},{"code":"58990","system":"gprdproduct"},{"code":"60856","system":"gprdproduct"},{"code":"63041","system":"gprdproduct"},{"code":"63246","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-nifedipine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-nifedipine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-nifedipine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
