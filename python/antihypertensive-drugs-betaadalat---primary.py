# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1854","system":"gprdproduct"},{"code":"2280","system":"gprdproduct"},{"code":"2521","system":"gprdproduct"},{"code":"51917","system":"gprdproduct"},{"code":"52017","system":"gprdproduct"},{"code":"52728","system":"gprdproduct"},{"code":"53278","system":"gprdproduct"},{"code":"53500","system":"gprdproduct"},{"code":"56469","system":"gprdproduct"},{"code":"57531","system":"gprdproduct"},{"code":"57653","system":"gprdproduct"},{"code":"58557","system":"gprdproduct"},{"code":"61719","system":"gprdproduct"},{"code":"662","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-betaadalat---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-betaadalat---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-betaadalat---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
